<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $fields = $request->validate([
            'name' => 'required|string',
            'prenom' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string'
        ], [
            'name.required' => 'Veuillez entre votre nom',
            'prenom.required' => 'Veuillez entre votre prenom',
            'email.required' => 'Veuillez entre votre email',
            'email.unique' => 'Adresse mail existe déjà',
            'password.required' => 'Veuillez entre votre mot de passe'
        ]);

        $user = User::create([
            'name' => $fields['name'],
            'prenom' => $fields['prenom'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['password'])
        ]);

        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }
    public function login(Request $request)
    {
        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ], [
            'email.required' => 'Veuillez Entrez tout les informations!',
            'password.required' => 'Veuillez Entrez tout les informations!'
        ]);

        $user = User::where('email', $fields['email'])->first();
        if (!$user || !Hash::check($fields['password'], $user->password)) {
            return response([
                'message' => 'Login ou mot de passe incorrecte!'
            ], 401);
        }

        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }

    public function update($id, Request $request)
    {
        $fields = $request->validate([
            'name' => 'required|string',
            'prenom' => 'required|string',
            'email' => 'required|string',
        ], [
            'name.required' => 'Veuillez entre votre nom',
            'prenom.required' => 'Veuillez entre votre prenom',
            'email.required' => 'Veuillez entre votre email',
        ]);

        $user = User::findOrFail($id);

        $user->name = $fields['name'];
        $user->prenom = $fields['prenom'];
        $user->email = $fields['email'];
        if ($request->password === null) {
            $user->password =  $user->password;
        } else {
            $user->password =  bcrypt($request->password);
        }
        $user->civilite = $request->civilite;
        $user->adresse = $request->adresse;
        $user->ville = $request->ville;
        $user->photo  = $request->photo;
        $user->save();

        return $user;
    }
}
