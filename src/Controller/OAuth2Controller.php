<?php
/*
 * SPDX-FileCopyrightText: 2017 I.I.S. Michele Giua - Cagliari - Assemini
 *
 * SPDX-License-Identifier: AGPL-3.0-or-later
 */


namespace App\Controller;

use KnpU\OAuth2ClientBundle\Client\ClientRegistry;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


/**
 * OAuth2Controller - gestione dell'autenticazione su provider esterno (Google Workspace)
 *
 * @author Antonello Dessì
 */
class OAuth2Controller extends BaseController {

  /**
   * Avvia l'autenticazione su provider esterno Google Workspace.
   *
   * @param ClientRegistry $clientRegistry Client che richiede il servizio
   *
   * @return Response Redirezione al servizio richiesto
   *
   * @Route("/login/gsuite", name="login_gsuite")
   */
  public function connectAction(ClientRegistry $clientRegistry): Response {
    // redirezione alla GSuite
    return $clientRegistry
      ->getClient('gsuite')
      ->redirect([], []);
	}

  /**
   * Avvia l'autenticazione su provider esterno Google Workspace per le app.
   *
   * @param ClientRegistry $clientRegistry Client che richiede il servizio
   * @param string $email Email dell'utente di cui effettuare il login
   *
   * @return Response Redirezione al servizio richiesto
   *
   * @Route("/login/gsuite/app/{email}", name="login_gsuite_app")
   */
  public function connectAppAction(ClientRegistry $clientRegistry, string $email): Response {
    $options = array();
    $options['login_hint'] = $email;
    // redirezione alla GSuite
    return $clientRegistry
      ->getClient('gsuite')
      ->redirect([], $options);
	}

  /**
   * Esegue autenticazione su Google Workspace tramite GsuiteAuthenticator
   *
   * @param Request $request Pagina richiesta
   * @param ClientRegistry $clientRegistry Client che richiede il servizio
   *
   * @Route("/login/gsuite/check", name="login_gsuite_check")
   */
  public function checkAction(Request $request, ClientRegistry $clientRegistry) {
  }

}
