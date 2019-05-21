Feature: Looking for competition
    As a user of “win_mate” app, I would like to be notified by email only if there is an ongoing competition on https://www.trojmiasto.pl/.

    Scenario: No competition on the page
        Given there is no competition on https://www.trojmiasto.pl/
        When win_mate checks the page
        Then win_mate does nothing

    Scenario: There is a competition on the page
        Given there is an ongoing competition on https://www.trojmiasto.pl/
        When win_mate checks the page
        Then win_mate sends an email to a user
