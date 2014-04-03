.class Lcom/x/google/masf/services/TranslationService$LanguagePair;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/masf/services/TranslationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LanguagePair"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field srcCode:Ljava/lang/String;

.field targetCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/TranslationService$LanguagePair;->srcCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/x/google/masf/services/TranslationService$LanguagePair;->targetCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/x/google/masf/services/TranslationService$LanguagePair;->name:Ljava/lang/String;

    return-void
.end method
