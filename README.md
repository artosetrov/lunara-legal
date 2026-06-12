# lunara-legal

Static pages for Lunara — Privacy Policy and Terms of Service.

## Hosting (GitHub Pages)

1. Create public GitHub repo `lunara-legal`
2. Upload `privacy.html` and `terms.html` to root
3. Settings → Pages → Branch: `main` → `/root` → Save
4. Wait 1–2 min, pages live at:
   - https://artosetrov.github.io/lunara-legal/privacy.html
   - https://artosetrov.github.io/lunara-legal/terms.html

## Использование в App Store Connect

В разделах `App Information`:
- Privacy Policy URL: `https://artosetrov.github.io/lunara-legal/privacy.html`
- Marketing URL (optional): `https://artosetrov.github.io/lunara-legal/`

В разделе `App Privacy → Manage`:
- Указать те же данные, что описаны в privacy.html (User Content, Identifiers, etc.)
- Third-party SDKs: OpenAI, RevenueCat

## Обновление

Любое изменение Privacy Policy — менять дату вверху страницы и пушить. Для material changes — также нотифицировать пользователя в-app (Settings banner).
