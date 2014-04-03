.class Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper$Columns;
.super Ljava/lang/Object;
.source "SavedAudioDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Columns"
.end annotation


# static fields
.field static final FILENAME:Ljava/lang/String; = "filename"

.field private static final FULL_PROJECTION:[Ljava/lang/String; = null

.field static final IS_RECOGNIZED:Ljava/lang/String; = "is_recognized"

.field static final IS_SYNCED:Ljava/lang/String; = "is_synced"

.field static final RECOGNIZED_COMMANDS:Ljava/lang/String; = "recognized_commands"

.field static final SAMPLE_RATE:Ljava/lang/String; = "sample_rate"

.field static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_recognized"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_synced"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "recognized_commands"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sample_rate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper$Columns;->FULL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper$Columns;->FULL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
