.class public final enum Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;
.super Ljava/lang/Enum;
.source "GameDashboardEvent.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_GAME_MODE_BATTERY:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_GAME_MODE_PERFORMANCE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_GAME_MODE_STANDARD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_CLOSE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_DISABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_DISABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_DISABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_DISABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_ENABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_ENABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_ENABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_ENABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_GAME_MODE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_LEARN_MORE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_PLAY_GAMES_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_SHOW_LEARN_MORE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_YOUTUBE_LIVE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_RESTART_CANCELLED:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_RESTART_NOW:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_STARTUP:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_FINISH:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_OPTIMIZE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_SCREEN_CAPTURE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_SKIPPED:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 26
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v1, "GAME_DASHBOARD_LAUNCH"

    const/4 v2, 0x0

    const/16 v3, 0x2d3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 28
    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v3, "GAME_DASHBOARD_STARTUP"

    const/4 v4, 0x1

    const/16 v5, 0x2d6

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_STARTUP:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 30
    new-instance v3, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v5, "GAME_DASHBOARD_MENU_ENABLE_SCREENSHOT"

    const/4 v6, 0x2

    const/16 v7, 0x2d7

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 32
    new-instance v5, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v7, "GAME_DASHBOARD_MENU_DISABLE_SCREENSHOT"

    const/4 v8, 0x3

    const/16 v9, 0x2d8

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 34
    new-instance v7, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v9, "GAME_DASHBOARD_MENU_ENABLE_SCREEN_RECORD"

    const/4 v10, 0x4

    const/16 v11, 0x2d9

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 36
    new-instance v9, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v11, "GAME_DASHBOARD_MENU_DISABLE_SCREEN_RECORD"

    const/4 v12, 0x5

    const/16 v13, 0x2da

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 38
    new-instance v11, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v13, "GAME_DASHBOARD_MENU_ENABLE_FPS"

    const/4 v14, 0x6

    const/16 v15, 0x2db

    invoke-direct {v11, v13, v14, v15}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 40
    new-instance v13, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_DISABLE_FPS"

    const/4 v14, 0x7

    const/16 v12, 0x2dc

    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 42
    new-instance v12, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_ENABLE_DND"

    const/16 v14, 0x8

    const/16 v10, 0x2dd

    invoke-direct {v12, v15, v14, v10}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 44
    new-instance v10, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_DISABLE_DND"

    const/16 v14, 0x9

    const/16 v8, 0x2de

    invoke-direct {v10, v15, v14, v8}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 46
    new-instance v8, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_CLOSE"

    const/16 v14, 0xa

    const/16 v6, 0x2df

    invoke-direct {v8, v15, v14, v6}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_CLOSE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 48
    new-instance v6, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_GAME_MODE_WIDGET"

    const/16 v14, 0xb

    const/16 v4, 0x2e0

    invoke-direct {v6, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_GAME_MODE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 50
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_YOUTUBE_LIVE_WIDGET"

    const/16 v14, 0xc

    const/16 v2, 0x2e1

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_YOUTUBE_LIVE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 52
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_PLAY_GAMES_WIDGET"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x2e2

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_PLAY_GAMES_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 54
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_SHOW_LEARN_MORE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x2e3

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_SHOW_LEARN_MORE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 56
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_LEARN_MORE"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x2e4

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_LEARN_MORE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 58
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_SCREENSHOT"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x2e5

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 60
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_SCREEN_RECORD"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x2e6

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 62
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_GAME_MODE_PERFORMANCE"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x2e7

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_PERFORMANCE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 64
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_GAME_MODE_STANDARD"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x2e8

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_STANDARD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 66
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_GAME_MODE_BATTERY"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x2e9

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_BATTERY:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 68
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_RESTART_NOW"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x2ea

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_RESTART_NOW:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 70
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_RESTART_CANCELLED"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x2eb

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_RESTART_CANCELLED:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 72
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_SKIPPED"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x2ec

    invoke-direct {v2, v14, v15, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_SKIPPED:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 74
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_LAUNCH"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x2ed

    invoke-direct {v4, v14, v15, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 76
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_OPTIMIZE"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x2ee

    invoke-direct {v2, v14, v15, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_OPTIMIZE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 78
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_SCREEN_CAPTURE"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x2ef

    invoke-direct {v4, v14, v15, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_SCREEN_CAPTURE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 80
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_DND"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x2f0

    invoke-direct {v2, v14, v15, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 82
    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_FINISH"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x2f1

    invoke-direct {v4, v14, v15, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_FINISH:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const/16 v2, 0x1d

    new-array v2, v2, [Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    .line 24
    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->$VALUES:[Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;
    .locals 1

    .line 24
    const-class v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->$VALUES:[Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-virtual {v0}, [Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->mId:I

    return p0
.end method
