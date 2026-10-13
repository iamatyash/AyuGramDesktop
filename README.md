<div align="center">

# AyuGram Desktop + Windows Installer

<p align="center">
  <img src=".github/AyuGram.png" alt="AyuGram Logo" width="128" />
</p>

[![Auto-Sync & Build Installer](https://github.com/iamatyash/AyuGramDesktop/actions/workflows/sync-and-build-installer.yml/badge.svg)](https://github.com/iamatyash/AyuGramDesktop/actions/workflows/sync-and-build-installer.yml)
[![Latest Release](https://img.shields.io/github/v/release/iamatyash/AyuGramDesktop?color=007ec6&label=Installer%20Release)](https://github.com/iamatyash/AyuGramDesktop/releases/latest)
[![Upstream](https://img.shields.io/badge/Upstream-AyuGram%2FAyuGramDesktop-brightgreen)](https://github.com/AyuGram/AyuGramDesktop)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<p align="center">
  <strong><a href="#-русский">🇷🇺 Русский</a></strong> • 
  <strong><a href="#-english">🇬🇧 English</a></strong>
</p>

---

</div>

## 🇷🇺 Русский

Автоматизированный форк официального клиента **[AyuGram Desktop](https://github.com/AyuGram/AyuGramDesktop)** с ежедневной синхронизацией апстрима и сборкой полноценного Windows-установщика (`AyuGram-Setup.exe`).

### 📥 Скачать

| Версия | Ссылка на загрузку | Описание |
| :--- | :--- | :--- |
| **Windows Installer** | [**Скачать AyuGram-Setup.exe**](https://github.com/iamatyash/AyuGramDesktop/releases/latest) | Полноценный инсталлятор (ярлыки в Пуске и на Рабочем столе, ассоциация ссылок `tg://`, интеграция в «Параметры» Windows) |
| **Portable (.zip)** | [**Скачать AyuGram.zip**](https://github.com/iamatyash/AyuGramDesktop/releases/latest) | Оригинальная портативная версия без установки |

---

### ✨ Чем этот форк отличается от оригинала?

Оригинальный репозиторий AyuGram для Windows выпускает только портативные `.zip`-архивы. Данный форк решает эту проблему:

1. **Официальный установщик для Windows (Inno Setup):**
   * Устанавливает AyuGram в `C:\Program Files\AyuGram`.
   * Создаёт ярлыки в меню «Пуск» и на Рабочем столе.
   * Регистрирует протокол ссылок `tg://` (ссылки из браузера открываются напрямую в клиенте).
   * Регистрирует приложение в «Установленные приложения» Windows с иконкой и корректным деинсталлятором.
   * Добавляет быстрый запуск через `Win + R` командой `ayugram`.

2. **Автоматическая синхронизация (GitHub Actions):**
   * Каждый день в `06:00 UTC` GitHub Actions автоматически проверяет новые релизы в [AyuGram/AyuGramDesktop](https://github.com/AyuGram/AyuGramDesktop).
   * При выходе нового апдейта сборщик автоматически упаковывает свежие файлы в инсталлятор и публикует новый релиз.

3. **Локальный фоновый автоапдейтер:**
   * В комплект входит скрипт `check-update.ps1` и интеграция с Планировщиком задач Windows, автоматически обновляющий клиент без потери ваших аккаунтов и настроек.

---

### 🔥 Возможности AyuGram

* **Призрак (Ghost mode):** гибко настраиваемый режим невидимки (не читать сообщения, не отправлять статус набора текста и онлайна).
* **История сообщений:** сохранение удалённых сообщений собеседников и истории их изменений (Anti-recall).
* **Локальный Telegram Premium:** доступ к кастомным эмодзи, увеличенным лимитам скорости и иконкам приложения.
* **Кастомизация интерфейса:** настройка шрифтов, стилей чатов, стримерский режим (скрытие личных данных).
* **Встроенный переводчик сообщений**.

Подробная документация по настройкам: [docs.ayugram.one](https://docs.ayugram.one/desktop/).

---

### 🔗 Ссылки
* Оригинальный проект: [AyuGram/AyuGramDesktop](https://github.com/AyuGram/AyuGramDesktop)
* Новостной Telegram-канал оригинального проекта: [@AyuGramReleases](https://t.me/AyuGramReleases)

<br />

---

## 🇬🇧 English

An automated tracking fork of the official **[AyuGram Desktop](https://github.com/AyuGram/AyuGramDesktop)** that automatically builds and releases a complete Windows Installer (`AyuGram-Setup.exe`) on every upstream release.

### 📥 Downloads

| Format | Download Link | Description |
| :--- | :--- | :--- |
| **Windows Installer** | [**Download AyuGram-Setup.exe**](https://github.com/iamatyash/AyuGramDesktop/releases/latest) | Complete Windows Setup with Start Menu/Desktop shortcuts, `tg://` URL protocol registration, and Windows Settings uninstaller |
| **Portable (.zip)** | [**Download AyuGram.zip**](https://github.com/iamatyash/AyuGramDesktop/releases/latest) | Standard portable archive |

---

### ✨ What makes this fork special?

The official AyuGram repository distributes Windows builds solely as portable `.zip` archives. This repository enhances that experience:

1. **Proper Windows Installer (powered by Inno Setup):**
   * Installs to `C:\Program Files\AyuGram`.
   * Adds Start Menu & Desktop shortcuts.
   * Registers the `tg://` URL scheme to handle Telegram links from browsers.
   * Registers in Windows "Installed apps" / Control Panel with icon and clean uninstallation.
   * Supports `Win + R` -> `ayugram`.

2. **Automated Upstream Sync (GitHub Actions):**
   * A daily scheduled workflow checks [AyuGram/AyuGramDesktop](https://github.com/AyuGram/AyuGramDesktop) for new tags and releases.
   * When an upstream update is detected, it automatically compiles `AyuGram-Setup.exe` and publishes a GitHub Release.

3. **Background Auto-Updater:**
   * Includes an updater script (`check-update.ps1`) and Windows Task Scheduler configuration to keep the local installation updated automatically without touching user session data.

---

### 🔥 AyuGram Core Features

* **Flexible Ghost Mode:** Read messages without sending read receipts, hide typing indicator, and manage online presence.
* **Anti-Recall / Message History:** Keep deleted messages and view edit history.
* **Local Telegram Premium:** Custom emoji, app icons, and higher speed limits.
* **Appearance Customization:** Custom fonts, streamer mode, improved chat layouts.
* **Built-in Translator**.

Official documentation: [docs.ayugram.one](https://docs.ayugram.one/desktop/).

---

### 🔗 Upstream & Credits
* Upstream Repository: [AyuGram/AyuGramDesktop](https://github.com/AyuGram/AyuGramDesktop)
* Official Telegram Channel: [@AyuGramReleases](https://t.me/AyuGramReleases)
* Developer: [Radolyn Labs](https://github.com/AyuGram)
