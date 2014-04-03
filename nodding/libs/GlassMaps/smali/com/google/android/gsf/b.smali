.class public final Lcom/google/android/gsf/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.action.GET_GLS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/b;->a:Landroid/content/Intent;

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown error"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "The Google login service cannot be found."

    goto :goto_0

    :pswitch_1
    const-string v0, "The Google login service cannot be verified."

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
