.class public final Lcom/google/glass/entity/EntityProvider$Columns;
.super Ljava/lang/Object;
.source "EntityProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final IS_COMMUNICATION_TARGET:Ljava/lang/String; = "is_communication_target"

.field public static final IS_IN_MY_CONTACTS:Ljava/lang/String; = "is_in_my_contacts"

.field public static final IS_SHARE_TARGET:Ljava/lang/String; = "is_share_target"

.field public static final OBFUSCATED_GAIA_ID:Ljava/lang/String; = "obfuscated_gaia_id"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PRIORITY:Ljava/lang/String; = "share_priority"

.field public static final PROTOBUF_BLOB:Ljava/lang/String; = "protobuf_blob"

.field public static final SECONDARY_PHONE_NUMBERS:Ljava/lang/String; = "secondary_phone_numbers"

.field public static final SHARE_COUNT:Ljava/lang/String; = "share_count"

.field public static final SHARE_TIME:Ljava/lang/String; = "share_time"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
