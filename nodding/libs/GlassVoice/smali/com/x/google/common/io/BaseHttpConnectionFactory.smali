.class public abstract Lcom/x/google/common/io/BaseHttpConnectionFactory;
.super Lcom/x/google/common/io/BaseConnectionFactory;

# interfaces
.implements Lcom/x/google/common/io/HttpConnectionFactory;


# static fields
.field protected static final NETWORK_AVAILABLE_PREF_NAME:Ljava/lang/String; = "HttpWorks"


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "HttpWorks"

    invoke-direct {p0, v0}, Lcom/x/google/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method
