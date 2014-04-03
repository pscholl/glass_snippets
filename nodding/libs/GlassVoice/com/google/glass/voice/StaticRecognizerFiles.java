package com.google.glass.voice;

 enum StaticRecognizerFiles
{
  final boolean combined;
  final String recogFile;
  final int recogFileResId;
  final boolean rtaCompatible;
  final String searchFile;
  final int searchFileResId;

  static
  {
    GUARD = new StaticRecognizerFiles("GUARD", 1, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw", R.raw.google_glass_okglass_en_us_alpha_sfs_delivery09_am, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_10.raw", R.raw.google_glass_okglass_en_us_alpha_sfs_delivery09_search_10);
    NOTIFICATION_GUARD = new StaticRecognizerFiles("NOTIFICATION_GUARD", 2, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw", R.raw.google_glass_okglass_en_us_alpha_sfs_delivery09_am, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_1.raw", R.raw.google_glass_okglass_en_us_alpha_sfs_delivery09_search_1);
    NOTIFICATION = new StaticRecognizerFiles("NOTIFICATION", 3, "google_glass_notificationset_en_us_sfs_delivery05_am.raw", R.raw.google_glass_notificationset_en_us_sfs_delivery05_am, "google_glass_notificationset_en_us_sfs_delivery05_search_13.raw", R.raw.google_glass_notificationset_en_us_sfs_delivery05_search_13);
    PHOTO_REVIEW = new StaticRecognizerFiles("PHOTO_REVIEW", 4, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am.raw", R.raw.google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12.raw", R.raw.google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12);
    INCOMING_CALL = new StaticRecognizerFiles("INCOMING_CALL", 5, "google_glass_callset_en_us_sfs_delivery03_am.raw", R.raw.google_glass_callset_en_us_sfs_delivery03_am, "google_glass_callset_en_us_sfs_delivery03_search_13.raw", R.raw.google_glass_callset_en_us_sfs_delivery03_search_13);
    PHOTO_SHARE = new StaticRecognizerFiles("PHOTO_SHARE", 6, "google_glass_photoshare_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_photoshare_en_us_alpha_sfs_delivery01_am, "google_glass_photoshare_en_us_alpha_sfs_delivery01_search_11.raw", R.raw.google_glass_photoshare_en_us_alpha_sfs_delivery01_search_11);
    DIRECTIONS = new StaticRecognizerFiles("DIRECTIONS", 7, "google_glass_directions_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_directions_en_us_alpha_sfs_delivery01_am, "google_glass_directions_en_us_alpha_sfs_delivery01_search_11.raw", R.raw.google_glass_directions_en_us_alpha_sfs_delivery01_search_11);
    POST_AN_UPDATE = new StaticRecognizerFiles("POST_AN_UPDATE", 8, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_am.raw", R.raw.google_glass_postanupdate_en_us_alpha_sfs_delivery02_am, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9.raw", R.raw.google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9);
    FIND_A_RECIPE = new StaticRecognizerFiles("FIND_A_RECIPE", 9, "google_glass_find_a_recipe_en_us_sfs_delivery02_am.raw", R.raw.google_glass_find_a_recipe_en_us_sfs_delivery02_am, "google_glass_find_a_recipe_en_us_sfs_delivery02_search_9.raw", R.raw.google_glass_find_a_recipe_en_us_sfs_delivery02_search_9, true);
    RECORD_A_RECIPE = new StaticRecognizerFiles("RECORD_A_RECIPE", 10, "google_glass_record_a_recipe_en_us_sfs_delivery02_am.raw", R.raw.google_glass_record_a_recipe_en_us_sfs_delivery02_am, "google_glass_record_a_recipe_en_us_sfs_delivery02_search_13.raw", R.raw.google_glass_record_a_recipe_en_us_sfs_delivery02_search_13, true);
    START_A_BIKE_RIDE = new StaticRecognizerFiles("START_A_BIKE_RIDE", 11, "google_glass_start_a_bike_ride_en_us_sfs_delivery02_am.raw", R.raw.google_glass_start_a_bike_ride_en_us_sfs_delivery02_am, "google_glass_start_a_bike_ride_en_us_sfs_delivery02_search_11.raw", R.raw.google_glass_start_a_bike_ride_en_us_sfs_delivery02_search_11, true);
    START_A_RUN = new StaticRecognizerFiles("START_A_RUN", 12, "google_glass_start_a_run_en_us_sfs_delivery02_am.raw", R.raw.google_glass_start_a_run_en_us_sfs_delivery02_am, "google_glass_start_a_run_en_us_sfs_delivery02_search_10.raw", R.raw.google_glass_start_a_run_en_us_sfs_delivery02_search_10, true);
    START_A_STOP_WATCH = new StaticRecognizerFiles("START_A_STOP_WATCH", 13, "google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_am, "google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_search_11.raw", R.raw.google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_search_11, true);
    EXPLORE_NEARBY = new StaticRecognizerFiles("EXPLORE_NEARBY", 14, "google_glass_explore_nearby_en_us_sfs_delivery01_am.raw", R.raw.google_glass_explore_nearby_en_us_sfs_delivery01_am, "google_glass_explore_nearby_en_us_sfs_delivery01_search_10.raw", R.raw.google_glass_explore_nearby_en_us_sfs_delivery01_search_10, true);
    FIND_A_PLACE = new StaticRecognizerFiles("FIND_A_PLACE", 15, "google_glass_find_a_place_en_us_sfs_delivery01_am.raw", R.raw.google_glass_find_a_place_en_us_sfs_delivery01_am, "google_glass_find_a_place_en_us_sfs_delivery01_search_12.raw", R.raw.google_glass_find_a_place_en_us_sfs_delivery01_search_12, true);
    START_A_WORKOUT = new StaticRecognizerFiles("START_A_WORKOUT", 16, "google_glass_start_a_workout_en_us_sfs_delivery01_am.raw", R.raw.google_glass_start_a_workout_en_us_sfs_delivery01_am, "google_glass_start_a_workout_en_us_sfs_delivery01_search_12.raw", R.raw.google_glass_start_a_workout_en_us_sfs_delivery01_search_12, true);
    TAKE_A_NOTE = new StaticRecognizerFiles("TAKE_A_NOTE", 17, "google_glass_take_a_note_en_us_sfs_delivery02_am.raw", R.raw.google_glass_take_a_note_en_us_sfs_delivery02_am, "google_glass_take_a_note_en_us_sfs_delivery02_search_5.raw", R.raw.google_glass_take_a_note_en_us_sfs_delivery02_search_5, true);
    LISTEN_TO = new StaticRecognizerFiles("LISTEN_TO", 18, "google_glass_listento_en_us_sfs_delivery03_am.raw", R.raw.google_glass_listento_en_us_sfs_delivery03_am, "google_glass_listento_en_us_sfs_delivery03_search_10.raw", R.raw.google_glass_listento_en_us_sfs_delivery03_search_10, true);
    PLAY_MUSIC = new StaticRecognizerFiles("PLAY_MUSIC", 19, "google_glass_playmusic_en_us_sfs_delivery02_am.raw", R.raw.google_glass_playmusic_en_us_sfs_delivery02_am, "google_glass_playmusic_en_us_sfs_delivery02_search_9.raw", R.raw.google_glass_playmusic_en_us_sfs_delivery02_search_9, true);
    CALL_ME_A_CAR = new StaticRecognizerFiles("CALL_ME_A_CAR", 20, "google_glass_call_me_a_car_en_us_sfs_delivery02_am.raw", R.raw.google_glass_call_me_a_car_en_us_sfs_delivery02_am, "google_glass_call_me_a_car_en_us_sfs_delivery02_search_8.raw", R.raw.google_glass_call_me_a_car_en_us_sfs_delivery02_search_8, true);
    CAPTURE_A_PANORAMA = new StaticRecognizerFiles("CAPTURE_A_PANORAMA", 21, "google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_am, "google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_search_12.raw", R.raw.google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_search_12, true);
    CHECK_ME_IN = new StaticRecognizerFiles("CHECK_ME_IN", 22, "google_glass_check_me_in_en_us_sfs_delivery02_am.raw", R.raw.google_glass_check_me_in_en_us_sfs_delivery02_am, "google_glass_check_me_in_en_us_sfs_delivery02_search_8.raw", R.raw.google_glass_check_me_in_en_us_sfs_delivery02_search_8, true);
    ADD_A_CALENDAR_EVENT = new StaticRecognizerFiles("ADD_A_CALENDAR_EVENT", 23, "google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_am, "google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_search_9.raw", R.raw.google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_search_9, true);
    CREATE_A_THREE_D_MODEL = new StaticRecognizerFiles("CREATE_A_THREE_D_MODEL", 24, "google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_am, "google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_search_11.raw", R.raw.google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_search_11, true);
    LEARN_A_SONG = new StaticRecognizerFiles("LEARN_A_SONG", 25, "google_glass_learn_a_song_en_us_sfs_delivery01_am.raw", R.raw.google_glass_learn_a_song_en_us_sfs_delivery01_am, "google_glass_learn_a_song_en_us_sfs_delivery01_search_13.raw", R.raw.google_glass_learn_a_song_en_us_sfs_delivery01_search_13, true);
    PLAY_A_GAME = new StaticRecognizerFiles("PLAY_A_GAME", 26, "google_glass_play_a_game_en_us_sfs_delivery01_am.raw", R.raw.google_glass_play_a_game_en_us_sfs_delivery01_am, "google_glass_play_a_game_en_us_sfs_delivery01_search_8.raw", R.raw.google_glass_play_a_game_en_us_sfs_delivery01_search_8, true);
    RECOGNIZE_THIS_SONG = new StaticRecognizerFiles("RECOGNIZE_THIS_SONG", 27, "google_glass_recognize_this_song_en_us_sfs_delivery01_am.raw", R.raw.google_glass_recognize_this_song_en_us_sfs_delivery01_am, "google_glass_recognize_this_song_en_us_sfs_delivery01_search_10.raw", R.raw.google_glass_recognize_this_song_en_us_sfs_delivery01_search_10, true);
    REMIND_ME_TO = new StaticRecognizerFiles("REMIND_ME_TO", 28, "google_glass_remind_me_to_en_us_sfs_delivery02_am.raw", R.raw.google_glass_remind_me_to_en_us_sfs_delivery02_am, "google_glass_remind_me_to_en_us_sfs_delivery02_search_13.raw", R.raw.google_glass_remind_me_to_en_us_sfs_delivery02_search_13, true);
    SHOW_A_COMPASS = new StaticRecognizerFiles("SHOW_A_COMPASS", 29, "google_glass_show_a_compass_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_show_a_compass_en_us_alpha_sfs_delivery01_am, "google_glass_show_a_compass_en_us_alpha_sfs_delivery01_search_12.raw", R.raw.google_glass_show_a_compass_en_us_alpha_sfs_delivery01_search_12, true);
    START_A_ROUND_OF_GOLF = new StaticRecognizerFiles("START_A_ROUND_OF_GOLF", 30, "google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_am, "google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_search_7.raw", R.raw.google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_search_7, true);
    START_A_TIMER = new StaticRecognizerFiles("START_A_TIMER", 31, "google_glass_start_a_timer_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_start_a_timer_en_us_alpha_sfs_delivery01_am, "google_glass_start_a_timer_en_us_alpha_sfs_delivery01_search_12.raw", R.raw.google_glass_start_a_timer_en_us_alpha_sfs_delivery01_search_12, true);
    TRANSLATE_THIS = new StaticRecognizerFiles("TRANSLATE_THIS", 32, "google_glass_translate_this_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_translate_this_en_us_alpha_sfs_delivery01_am, "google_glass_translate_this_en_us_alpha_sfs_delivery01_search_10.raw", R.raw.google_glass_translate_this_en_us_alpha_sfs_delivery01_search_10, true);
    TUNE_AN_INSTRUMENT = new StaticRecognizerFiles("TUNE_AN_INSTRUMENT", 33, "google_glass_tune_an_instrument_en_us_sfs_delivery01_am.raw", R.raw.google_glass_tune_an_instrument_en_us_sfs_delivery01_am, "google_glass_tune_an_instrument_en_us_sfs_delivery01_search_8.raw", R.raw.google_glass_tune_an_instrument_en_us_sfs_delivery01_search_8, true);
    MAIN_MENU_RTA = new StaticRecognizerFiles("MAIN_MENU_RTA", 34, "rta_combined_am.raw", R.raw.rta_combined_am, "rta_combined_sc.raw", R.raw.rta_combined_sc, true, true);
    StaticRecognizerFiles[] arrayOfStaticRecognizerFiles = new StaticRecognizerFiles[35];
    arrayOfStaticRecognizerFiles[0] = MAIN_MENU_LEGACY;
    arrayOfStaticRecognizerFiles[1] = GUARD;
    arrayOfStaticRecognizerFiles[2] = NOTIFICATION_GUARD;
    arrayOfStaticRecognizerFiles[3] = NOTIFICATION;
    arrayOfStaticRecognizerFiles[4] = PHOTO_REVIEW;
    arrayOfStaticRecognizerFiles[5] = INCOMING_CALL;
    arrayOfStaticRecognizerFiles[6] = PHOTO_SHARE;
    arrayOfStaticRecognizerFiles[7] = DIRECTIONS;
    arrayOfStaticRecognizerFiles[8] = POST_AN_UPDATE;
    arrayOfStaticRecognizerFiles[9] = FIND_A_RECIPE;
    arrayOfStaticRecognizerFiles[10] = RECORD_A_RECIPE;
    arrayOfStaticRecognizerFiles[11] = START_A_BIKE_RIDE;
    arrayOfStaticRecognizerFiles[12] = START_A_RUN;
    arrayOfStaticRecognizerFiles[13] = START_A_STOP_WATCH;
    arrayOfStaticRecognizerFiles[14] = EXPLORE_NEARBY;
    arrayOfStaticRecognizerFiles[15] = FIND_A_PLACE;
    arrayOfStaticRecognizerFiles[16] = START_A_WORKOUT;
    arrayOfStaticRecognizerFiles[17] = TAKE_A_NOTE;
    arrayOfStaticRecognizerFiles[18] = LISTEN_TO;
    arrayOfStaticRecognizerFiles[19] = PLAY_MUSIC;
    arrayOfStaticRecognizerFiles[20] = CALL_ME_A_CAR;
    arrayOfStaticRecognizerFiles[21] = CAPTURE_A_PANORAMA;
    arrayOfStaticRecognizerFiles[22] = CHECK_ME_IN;
    arrayOfStaticRecognizerFiles[23] = ADD_A_CALENDAR_EVENT;
    arrayOfStaticRecognizerFiles[24] = CREATE_A_THREE_D_MODEL;
    arrayOfStaticRecognizerFiles[25] = LEARN_A_SONG;
    arrayOfStaticRecognizerFiles[26] = PLAY_A_GAME;
    arrayOfStaticRecognizerFiles[27] = RECOGNIZE_THIS_SONG;
    arrayOfStaticRecognizerFiles[28] = REMIND_ME_TO;
    arrayOfStaticRecognizerFiles[29] = SHOW_A_COMPASS;
    arrayOfStaticRecognizerFiles[30] = START_A_ROUND_OF_GOLF;
    arrayOfStaticRecognizerFiles[31] = START_A_TIMER;
    arrayOfStaticRecognizerFiles[32] = TRANSLATE_THIS;
    arrayOfStaticRecognizerFiles[33] = TUNE_AN_INSTRUMENT;
    arrayOfStaticRecognizerFiles[34] = MAIN_MENU_RTA;
  }

  private StaticRecognizerFiles(String paramString1, int paramInt1, String paramString2, int paramInt2)
  {
    this(paramString1, paramInt1, paramString2, paramInt2, false, false);
  }

  private StaticRecognizerFiles(String paramString1, int paramInt1, String paramString2, int paramInt2, boolean paramBoolean)
  {
    this(paramString1, paramInt1, paramString2, paramInt2, paramBoolean, false);
  }

  private StaticRecognizerFiles(String paramString1, int paramInt1, String paramString2, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.recogFile = paramString1;
    this.recogFileResId = paramInt1;
    this.searchFile = paramString2;
    this.searchFileResId = paramInt2;
    this.rtaCompatible = paramBoolean1;
    this.combined = paramBoolean2;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.StaticRecognizerFiles
 * JD-Core Version:    0.6.2
 */