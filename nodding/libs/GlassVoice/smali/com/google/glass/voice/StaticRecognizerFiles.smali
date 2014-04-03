.class final enum Lcom/google/glass/voice/StaticRecognizerFiles;
.super Ljava/lang/Enum;
.source "StaticRecognizerFiles.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/StaticRecognizerFiles;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum CALL_ME_A_CAR:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum CAPTURE_A_PANORAMA:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum CHECK_ME_IN:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum CREATE_A_THREE_D_MODEL:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum DIRECTIONS:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum EXPLORE_NEARBY:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum FIND_A_PLACE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum FIND_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum INCOMING_CALL:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum LEARN_A_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum LISTEN_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum MAIN_MENU_LEGACY:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum MAIN_MENU_RTA:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum NOTIFICATION:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum NOTIFICATION_GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PHOTO_REVIEW:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PHOTO_SHARE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PLAY_A_GAME:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PLAY_MUSIC:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum POST_AN_UPDATE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum RECOGNIZE_THIS_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum RECORD_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum REMIND_ME_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum SHOW_A_COMPASS:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_BIKE_RIDE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_ROUND_OF_GOLF:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_RUN:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_STOP_WATCH:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_TIMER:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_WORKOUT:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum TAKE_A_NOTE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum TRANSLATE_THIS:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum TUNE_AN_INSTRUMENT:Lcom/google/glass/voice/StaticRecognizerFiles;


# instance fields
.field final combined:Z

.field final recogFile:Ljava/lang/String;

.field final recogFileResId:I

.field final rtaCompatible:Z

.field final searchFile:Ljava/lang/String;

.field final searchFileResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 4
    new-instance v0, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v1, "MAIN_MENU_LEGACY"

    const-string v3, "google_glass_mainset_en_us_sfs_delivery22_am.raw"

    sget v4, Lcom/google/glass/voice/R$raw;->google_glass_mainset_en_us_sfs_delivery22_am:I

    const-string v5, "google_glass_mainset_en_us_sfs_delivery22_search_19.raw"

    sget v6, Lcom/google/glass/voice/R$raw;->google_glass_mainset_en_us_sfs_delivery22_search_19:I

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_LEGACY:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 8
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "GUARD"

    const-string v6, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_am:I

    const-string v8, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_10.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_search_10:I

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 12
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "NOTIFICATION_GUARD"

    const-string v6, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_am:I

    const-string v8, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_1.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_search_1:I

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION_GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 16
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "NOTIFICATION"

    const-string v6, "google_glass_notificationset_en_us_sfs_delivery05_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_notificationset_en_us_sfs_delivery05_am:I

    const-string v8, "google_glass_notificationset_en_us_sfs_delivery05_search_13.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_notificationset_en_us_sfs_delivery05_search_13:I

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 20
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "PHOTO_REVIEW"

    const-string v6, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am:I

    const-string v8, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12:I

    move v5, v14

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_REVIEW:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 24
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "INCOMING_CALL"

    const/4 v5, 0x5

    const-string v6, "google_glass_callset_en_us_sfs_delivery03_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_callset_en_us_sfs_delivery03_am:I

    const-string v8, "google_glass_callset_en_us_sfs_delivery03_search_13.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_callset_en_us_sfs_delivery03_search_13:I

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->INCOMING_CALL:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 28
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "PHOTO_SHARE"

    const/4 v5, 0x6

    const-string v6, "google_glass_photoshare_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_photoshare_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_photoshare_en_us_alpha_sfs_delivery01_search_11.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_photoshare_en_us_alpha_sfs_delivery01_search_11:I

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_SHARE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 32
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "DIRECTIONS"

    const/4 v5, 0x7

    const-string v6, "google_glass_directions_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_directions_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_directions_en_us_alpha_sfs_delivery01_search_11.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_directions_en_us_alpha_sfs_delivery01_search_11:I

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->DIRECTIONS:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 36
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "POST_AN_UPDATE"

    const/16 v5, 0x8

    const-string v6, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_postanupdate_en_us_alpha_sfs_delivery02_am:I

    const-string v8, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9:I

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->POST_AN_UPDATE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 42
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "FIND_A_RECIPE"

    const/16 v5, 0x9

    const-string v6, "google_glass_find_a_recipe_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_find_a_recipe_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_find_a_recipe_en_us_sfs_delivery02_search_9.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_find_a_recipe_en_us_sfs_delivery02_search_9:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 46
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "RECORD_A_RECIPE"

    const/16 v5, 0xa

    const-string v6, "google_glass_record_a_recipe_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_record_a_recipe_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_record_a_recipe_en_us_sfs_delivery02_search_13.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_record_a_recipe_en_us_sfs_delivery02_search_13:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->RECORD_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 50
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "START_A_BIKE_RIDE"

    const/16 v5, 0xb

    const-string v6, "google_glass_start_a_bike_ride_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_bike_ride_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_start_a_bike_ride_en_us_sfs_delivery02_search_11.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_start_a_bike_ride_en_us_sfs_delivery02_search_11:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_BIKE_RIDE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 54
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "START_A_RUN"

    const/16 v5, 0xc

    const-string v6, "google_glass_start_a_run_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_run_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_start_a_run_en_us_sfs_delivery02_search_10.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_start_a_run_en_us_sfs_delivery02_search_10:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_RUN:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 58
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "START_A_STOP_WATCH"

    const/16 v5, 0xd

    const-string v6, "google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_search_11.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_search_11:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_STOP_WATCH:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 62
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "EXPLORE_NEARBY"

    const/16 v5, 0xe

    const-string v6, "google_glass_explore_nearby_en_us_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_explore_nearby_en_us_sfs_delivery01_am:I

    const-string v8, "google_glass_explore_nearby_en_us_sfs_delivery01_search_10.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_explore_nearby_en_us_sfs_delivery01_search_10:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->EXPLORE_NEARBY:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 66
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "FIND_A_PLACE"

    const/16 v5, 0xf

    const-string v6, "google_glass_find_a_place_en_us_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_find_a_place_en_us_sfs_delivery01_am:I

    const-string v8, "google_glass_find_a_place_en_us_sfs_delivery01_search_12.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_find_a_place_en_us_sfs_delivery01_search_12:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_PLACE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 70
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "START_A_WORKOUT"

    const/16 v5, 0x10

    const-string v6, "google_glass_start_a_workout_en_us_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_workout_en_us_sfs_delivery01_am:I

    const-string v8, "google_glass_start_a_workout_en_us_sfs_delivery01_search_12.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_start_a_workout_en_us_sfs_delivery01_search_12:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_WORKOUT:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 74
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "TAKE_A_NOTE"

    const/16 v5, 0x11

    const-string v6, "google_glass_take_a_note_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_take_a_note_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_take_a_note_en_us_sfs_delivery02_search_5.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_take_a_note_en_us_sfs_delivery02_search_5:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->TAKE_A_NOTE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 78
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "LISTEN_TO"

    const/16 v5, 0x12

    const-string v6, "google_glass_listento_en_us_sfs_delivery03_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_listento_en_us_sfs_delivery03_am:I

    const-string v8, "google_glass_listento_en_us_sfs_delivery03_search_10.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_listento_en_us_sfs_delivery03_search_10:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->LISTEN_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 82
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "PLAY_MUSIC"

    const/16 v5, 0x13

    const-string v6, "google_glass_playmusic_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_playmusic_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_playmusic_en_us_sfs_delivery02_search_9.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_playmusic_en_us_sfs_delivery02_search_9:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_MUSIC:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 86
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "CALL_ME_A_CAR"

    const/16 v5, 0x14

    const-string v6, "google_glass_call_me_a_car_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_call_me_a_car_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_call_me_a_car_en_us_sfs_delivery02_search_8.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_call_me_a_car_en_us_sfs_delivery02_search_8:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->CALL_ME_A_CAR:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 90
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "CAPTURE_A_PANORAMA"

    const/16 v5, 0x15

    const-string v6, "google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_search_12.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_search_12:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->CAPTURE_A_PANORAMA:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 94
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "CHECK_ME_IN"

    const/16 v5, 0x16

    const-string v6, "google_glass_check_me_in_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_check_me_in_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_check_me_in_en_us_sfs_delivery02_search_8.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_check_me_in_en_us_sfs_delivery02_search_8:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->CHECK_ME_IN:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 98
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "ADD_A_CALENDAR_EVENT"

    const/16 v5, 0x17

    const-string v6, "google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_search_9.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_search_9:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 102
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "CREATE_A_THREE_D_MODEL"

    const/16 v5, 0x18

    const-string v6, "google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_search_11.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_search_11:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->CREATE_A_THREE_D_MODEL:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 106
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "LEARN_A_SONG"

    const/16 v5, 0x19

    const-string v6, "google_glass_learn_a_song_en_us_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_learn_a_song_en_us_sfs_delivery01_am:I

    const-string v8, "google_glass_learn_a_song_en_us_sfs_delivery01_search_13.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_learn_a_song_en_us_sfs_delivery01_search_13:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->LEARN_A_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 110
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "PLAY_A_GAME"

    const/16 v5, 0x1a

    const-string v6, "google_glass_play_a_game_en_us_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_play_a_game_en_us_sfs_delivery01_am:I

    const-string v8, "google_glass_play_a_game_en_us_sfs_delivery01_search_8.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_play_a_game_en_us_sfs_delivery01_search_8:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_A_GAME:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 114
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "RECOGNIZE_THIS_SONG"

    const/16 v5, 0x1b

    const-string v6, "google_glass_recognize_this_song_en_us_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_recognize_this_song_en_us_sfs_delivery01_am:I

    const-string v8, "google_glass_recognize_this_song_en_us_sfs_delivery01_search_10.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_recognize_this_song_en_us_sfs_delivery01_search_10:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->RECOGNIZE_THIS_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 118
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "REMIND_ME_TO"

    const/16 v5, 0x1c

    const-string v6, "google_glass_remind_me_to_en_us_sfs_delivery02_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_remind_me_to_en_us_sfs_delivery02_am:I

    const-string v8, "google_glass_remind_me_to_en_us_sfs_delivery02_search_13.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_remind_me_to_en_us_sfs_delivery02_search_13:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->REMIND_ME_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 122
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "SHOW_A_COMPASS"

    const/16 v5, 0x1d

    const-string v6, "google_glass_show_a_compass_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_show_a_compass_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_show_a_compass_en_us_alpha_sfs_delivery01_search_12.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_show_a_compass_en_us_alpha_sfs_delivery01_search_12:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->SHOW_A_COMPASS:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 126
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "START_A_ROUND_OF_GOLF"

    const/16 v5, 0x1e

    const-string v6, "google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_search_7.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_search_7:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_ROUND_OF_GOLF:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 130
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "START_A_TIMER"

    const/16 v5, 0x1f

    const-string v6, "google_glass_start_a_timer_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_timer_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_start_a_timer_en_us_alpha_sfs_delivery01_search_12.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_start_a_timer_en_us_alpha_sfs_delivery01_search_12:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_TIMER:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 134
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "TRANSLATE_THIS"

    const/16 v5, 0x20

    const-string v6, "google_glass_translate_this_en_us_alpha_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_translate_this_en_us_alpha_sfs_delivery01_am:I

    const-string v8, "google_glass_translate_this_en_us_alpha_sfs_delivery01_search_10.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_translate_this_en_us_alpha_sfs_delivery01_search_10:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->TRANSLATE_THIS:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 138
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "TUNE_AN_INSTRUMENT"

    const/16 v5, 0x21

    const-string v6, "google_glass_tune_an_instrument_en_us_sfs_delivery01_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_tune_an_instrument_en_us_sfs_delivery01_am:I

    const-string v8, "google_glass_tune_an_instrument_en_us_sfs_delivery01_search_8.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->google_glass_tune_an_instrument_en_us_sfs_delivery01_search_8:I

    invoke-direct/range {v3 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->TUNE_AN_INSTRUMENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 146
    new-instance v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v4, "MAIN_MENU_RTA"

    const/16 v5, 0x22

    const-string v6, "rta_combined_am.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->rta_combined_am:I

    const-string v8, "rta_combined_sc.raw"

    sget v9, Lcom/google/glass/voice/R$raw;->rta_combined_sc:I

    move v11, v10

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZ)V

    sput-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_RTA:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 3
    const/16 v0, 0x23

    new-array v0, v0, [Lcom/google/glass/voice/StaticRecognizerFiles;

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_LEGACY:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION_GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_REVIEW:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->INCOMING_CALL:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_SHARE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->DIRECTIONS:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->POST_AN_UPDATE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->RECORD_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_BIKE_RIDE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_RUN:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_STOP_WATCH:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->EXPLORE_NEARBY:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_PLACE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_WORKOUT:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->TAKE_A_NOTE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->LISTEN_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_MUSIC:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->CALL_ME_A_CAR:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->CAPTURE_A_PANORAMA:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->CHECK_ME_IN:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->CREATE_A_THREE_D_MODEL:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->LEARN_A_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_A_GAME:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->RECOGNIZE_THIS_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->REMIND_ME_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->SHOW_A_COMPASS:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_ROUND_OF_GOLF:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_TIMER:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->TRANSLATE_THIS:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->TUNE_AN_INSTRUMENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_RTA:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/StaticRecognizerFiles;->$VALUES:[Lcom/google/glass/voice/StaticRecognizerFiles;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 9
    .parameter
    .parameter
    .parameter "recogFileName"
    .parameter "recogFileResId"
    .parameter "searchFileName"
    .parameter "searchFileResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 172
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZ)V

    .line 173
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V
    .locals 9
    .parameter
    .parameter
    .parameter "recogFileName"
    .parameter "recogFileResId"
    .parameter "searchFileName"
    .parameter "searchFileResId"
    .parameter "rtaCompatible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZ)V

    .line 178
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "recogFileName"
    .parameter "recogFileResId"
    .parameter "searchFileName"
    .parameter "searchFileResId"
    .parameter "rtaCompatible"
    .parameter "combined"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput-object p3, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFile:Ljava/lang/String;

    .line 163
    iput p4, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFileResId:I

    .line 164
    iput-object p5, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFile:Ljava/lang/String;

    .line 165
    iput p6, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFileResId:I

    .line 166
    iput-boolean p7, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    .line 167
    iput-boolean p8, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->combined:Z

    .line 168
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/StaticRecognizerFiles;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/StaticRecognizerFiles;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/StaticRecognizerFiles;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/glass/voice/StaticRecognizerFiles;->$VALUES:[Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-virtual {v0}, [Lcom/google/glass/voice/StaticRecognizerFiles;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/StaticRecognizerFiles;

    return-object v0
.end method
