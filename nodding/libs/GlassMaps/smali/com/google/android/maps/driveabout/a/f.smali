.class final Lcom/google/android/maps/driveabout/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/k;

.field final synthetic b:Lcom/google/android/maps/driveabout/a/d;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/a/d;Lcom/google/android/maps/driveabout/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/f;->b:Lcom/google/android/maps/driveabout/a/d;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/f;->a:Lcom/google/android/maps/driveabout/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/a/g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/a/g;-><init>(Lcom/google/android/maps/driveabout/a/f;I)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/g;->start()V

    return-void
.end method
