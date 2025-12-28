/*
  # RLS Politikalarını Düzelt
  
  1. Tüm tablolar için READ politikaları ekle
  2. Anon kullanıcılar veri okuyabilsin
  3. Authenticated kullanıcılar INSERT/UPDATE yapabilsin
*/

-- YAKIT tablosu politikaları
DROP POLICY IF EXISTS "Herkes yakıt verilerini okuyabilir" ON yakit;
CREATE POLICY "Herkes yakıt verilerini okuyabilir"
  ON yakit FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Authenticated kullanıcılar yakıt ekleyebilir" ON yakit;
CREATE POLICY "Authenticated kullanıcılar yakıt ekleyebilir"
  ON yakit FOR INSERT
  WITH CHECK (true);

-- AGIRLIK tablosu politikaları
DROP POLICY IF EXISTS "Herkes ağırlık verilerini okuyabilir" ON agirlik;
CREATE POLICY "Herkes ağırlık verilerini okuyabilir"
  ON agirlik FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Authenticated kullanıcılar ağırlık ekleyebilir" ON agirlik;
CREATE POLICY "Authenticated kullanıcılar ağırlık ekleyebilir"
  ON agirlik FOR INSERT
  WITH CHECK (true);

-- ARAC_TAKIP tablosu politikaları
DROP POLICY IF EXISTS "Herkes araç takip verilerini okuyabilir" ON arac_takip;
CREATE POLICY "Herkes araç takip verilerini okuyabilir"
  ON arac_takip FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Authenticated kullanıcılar araç takip ekleyebilir" ON arac_takip;
CREATE POLICY "Authenticated kullanıcılar araç takip ekleyebilir"
  ON arac_takip FOR INSERT
  WITH CHECK (true);

-- ARACLAR tablosu politikaları
DROP POLICY IF EXISTS "Herkes araç verilerini okuyabilir" ON araclar;
CREATE POLICY "Herkes araç verilerini okuyabilir"
  ON araclar FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Authenticated kullanıcılar araç ekleyebilir" ON araclar;
CREATE POLICY "Authenticated kullanıcılar araç ekleyebilir"
  ON araclar FOR INSERT
  WITH CHECK (true);

DROP POLICY IF EXISTS "Authenticated kullanıcılar araç güncelleyebilir" ON araclar;
CREATE POLICY "Authenticated kullanıcılar araç güncelleyebilir"
  ON araclar FOR UPDATE
  USING (true)
  WITH CHECK (true);

DROP POLICY IF EXISTS "Authenticated kullanıcılar araç silebilir" ON araclar;
CREATE POLICY "Authenticated kullanıcılar araç silebilir"
  ON araclar FOR DELETE
  USING (true);
