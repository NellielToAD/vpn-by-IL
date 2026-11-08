# VPN by IL

Личный VPN-клиент для Windows, Android и Android TV.

**Основан на [Hiddify](https://github.com/hiddify/hiddify-app)** — открытом клиенте на ядре sing-box / Xray —
и распространяется под той же лицензией: [Hiddify Extended GNU GPL v3](LICENSE.md)
(некоммерческое использование, исходный код открыт как форк Hiddify, сборки — только через GitHub Actions).
Оригинальное описание Hiddify: [README_hiddify.md](README_hiddify.md).

## Отличия от Hiddify

- Название «VPN by IL», своя иконка, баннер для Android TV, значок уведомления и трея.
- Отдельный идентификатор Android-приложения (`com.nellieltoad.vpnbyil`) и отдельный установщик Windows,
  поэтому ставится рядом с Hiddify, не заменяя его.
- По умолчанию регион «Россия» и русский язык: российские сайты идут напрямую, остальное — через VPN;
  DNS для прямых соединений — Яндекс (77.88.8.8).
- Ссылки «Исходный код», «Лицензия» и проверка обновлений ведут в этот репозиторий.
- Сборка только Windows и Android/Android TV, без цифровой подписи (своя схема GitHub Actions:
  `.github/workflows/vpn-by-il.yml`); рабочие процессы Hiddify для магазинов приложений убраны.
- Отправка отчётов об ошибках выключена: адрес Sentry в сборку не передаётся.

Ключи от серверов в приложение не встроены: серверы добавляются ссылкой-подпиской или QR-кодом.

---

# VPN by IL (English)

A personal VPN client for Windows, Android and Android TV, **based on [Hiddify](https://github.com/hiddify/hiddify-app)**
and licensed under the same [Hiddify Extended GPL v3](LICENSE.md). Changes: own name and icons, separate app id,
Russia as the default region and language, update checks pointed at this repository, Windows + Android only CI
without code signing, no error reporting.
