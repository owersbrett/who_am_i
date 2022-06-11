enum QualityCharacterization { strength, weakness, unsure, other }

class QualityCharacterizationHelper {
  static QualityCharacterization fromString(String string) {
    QualityCharacterization qualityCharacterization;
    switch (string) {
      case "QualityCharacterization.strength":
        qualityCharacterization = QualityCharacterization.strength;
        break;
      case "QualityCharacterization.weakness":
        qualityCharacterization = QualityCharacterization.weakness;
        break;
      case "QualityCharacterization.other":
        qualityCharacterization = QualityCharacterization.other;
        break;
      default:
        qualityCharacterization = QualityCharacterization.unsure;
    }
    return qualityCharacterization;
  }
}
