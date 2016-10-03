====
strongswan
====
StrongSwan saltstack formula

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Features
========

- Install strongswan
- Configure ipsec.conf
- Configure ipsec.secrets

Compatibility
=============

- Tested on ubuntu 16.04

Available states
================

.. contents::
    :local:

``strongswan``
-----
Sub1
****

Running
=======

salt node state.apply strongswan

Ideas and future development
============================

Template
========

This formula was created from a cookiecutter template.

See https://github.com/richerve/saltstack-formula-cookiecutter.
