.class public final Lcom/google/android/systemui/gamedashboard/GameMenuActivity;
.super Landroid/app/Activity;
.source "GameMenuActivity.java"


# static fields
.field private static final DND_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAvailableModes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackNavigationButton:Landroid/view/View;

.field private mBatteryModeRadioButton:Landroid/widget/RadioButton;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

.field private mCurrentView:Landroid/view/View;

.field private mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

.field private mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

.field private final mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

.field private final mDndReceiver:Landroid/content/BroadcastReceiver;

.field private mGameManager:Landroid/app/GameManager;

.field private mGameMenuMainView:Landroid/view/View;

.field private mGameModeView:Landroid/view/View;

.field private mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

.field private mGameModesSupported:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMaxWidgetsPerContainer:I

.field private mPerformanceModeRadioButton:Landroid/widget/RadioButton;

.field private mPlayGamesWidget:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

.field private mShortAnimationDuration:I

.field private final mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

.field private mStandardModeRadioButton:Landroid/widget/RadioButton;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mWidgetsView:Landroid/widget/LinearLayout;

.field private mYouTubeLiveWidget:Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;


# direct methods
.method public static synthetic $r8$lambda$5ROu3H0oSIkjhAkuxxyKG1_6pjw(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$4(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5dF4NJvpOQkjvpcZpZivGfiLwi0(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$showRestartDialog$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5jBklnlj0hkylHjK1ozzn9kbzX0(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$3(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JRv6OfLcp5vOsiAbh859btfpwcM(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$initDndButton$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MuXd_laXlA32UI__C_WC09BCwUQ(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NvGxv5HjMpFPi3-E9Q7RJcqS5Cc(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QDJ7VH48BsvGc5JYx1ipPJIYDvM(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$2(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SNKRV4dAFl4IhsckjyxhbIHEdQI(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$updateGameModeWidget$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U1zrIbToKpMk3rvTlaHvA9ihk4I(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$haVTTxMl9ISBumDwIrL8aDgUc94(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o8B0Wo0EVb2brv3rhyv8dOFyPCk(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPthuPcP_21Lyn6IAr7z1_0S69A(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r4JrlxURGNwWs4TcnqSUcSCSfCo(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$updateGameModeWidget$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r7jn6jSOZE-K8OqWjPQfJF14jPE(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$smoOveR9dBBYZWhiftRTAgxjEB0(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sntBdv1S79I3ZPZ5O-r5Rk5P_e0(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$updateGameModeWidget$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vvAYjC0bLsEub5I6wiv-YBIOeX8(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$showRestartDialog$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->DND_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Landroid/view/LayoutInflater;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    .line 119
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    .line 121
    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    .line 122
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 123
    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    .line 124
    iput-object p6, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 125
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->createDndReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    iput-object p7, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMainHandler:Landroid/os/Handler;

    .line 127
    iput-object p8, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBackNavigationButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameModeDndController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameDashboardButton;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method private createDndReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 455
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    return-object v0
.end method

.method public static createIntentForStart(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private initAvailableGameModes()V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/GameManager;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v0

    .line 294
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 295
    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 300
    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModesSupported:Z

    :cond_1
    return-void
.end method

.method private initWidgets()V
    .locals 5

    .line 252
    sget v0, Lcom/android/systemui/R$id;->game_menu_widgets:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    .line 254
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 261
    iput v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMaxWidgetsPerContainer:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 256
    iput v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMaxWidgetsPerContainer:I

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->game_menu_widget_container:I

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    .line 269
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/systemui/R$layout;->game_menu_widget:I

    invoke-virtual {v2, v4, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/WidgetView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    .line 271
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->addWidget(Lcom/google/android/systemui/gamedashboard/WidgetView;)I

    .line 273
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-static {p0, v0, v2}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->create(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mYouTubeLiveWidget:Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;

    .line 275
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->getView()Lcom/google/android/systemui/gamedashboard/WidgetView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->addWidget(Lcom/google/android/systemui/gamedashboard/WidgetView;)I

    .line 277
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->getWidgetCount()I

    move-result v0

    iget v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMaxWidgetsPerContainer:I

    if-ne v0, v2, :cond_1

    .line 278
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->create(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPlayGamesWidget:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    if-eqz v0, :cond_2

    .line 286
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->getView()Lcom/google/android/systemui/gamedashboard/WidgetView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->addWidget(Lcom/google/android/systemui/gamedashboard/WidgetView;)I

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initDndButton$11(Landroid/view/View;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 246
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->showDndText(Z)V

    .line 247
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->setGameModeDndOn(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_CLOSE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$10(Landroid/view/View;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    .line 154
    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->isToggled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setScreenshotVisibility(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->isToggled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setRecordVisibility(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$4(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    .line 165
    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->isToggled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 166
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setFpsVisibility(Z)V

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGameTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->registerFps(I)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->unregisterFps()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$5(Landroid/view/View;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$6(Landroid/view/View;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$7(Landroid/view/View;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$8(Landroid/view/View;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$9(Landroid/view/View;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showRestartDialog$15(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 389
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_RESTART_NOW:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 390
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->restartGameActivity()V

    return-void
.end method

.method private synthetic lambda$showRestartDialog$16(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_RESTART_CANCELLED:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method private synthetic lambda$updateGameModeWidget$12(Landroid/view/View;)V
    .locals 0

    .line 328
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToGameModeView()V

    return-void
.end method

.method private synthetic lambda$updateGameModeWidget$13(Landroid/view/View;)V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToGameModeView()V

    return-void
.end method

.method private synthetic lambda$updateGameModeWidget$14(Landroid/view/View;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToGameModeView()V

    return-void
.end method

.method private navigateToGameModeView()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_GAME_MODE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$string;->game_menu_game_mode_title:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToView(Landroid/view/View;I)V

    .line 349
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result v0

    .line 350
    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->toggleGameModeRadioButtons(I)V

    return-void
.end method

.method private navigateToView(Landroid/view/View;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 417
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 420
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortAnimationDuration:I

    int-to-long v2, v2

    .line 421
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;ILandroid/view/View;)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 436
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 438
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortAnimationDuration:I

    int-to-long v0, v0

    .line 439
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$2;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V

    .line 440
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private onGameModeSelectionChanged(Landroid/view/View;)V
    .locals 2

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 356
    sget v0, Lcom/android/systemui/R$id;->performance_mode:I

    if-eq p1, v0, :cond_5

    sget v0, Lcom/android/systemui/R$id;->performance_mode_radio_button:I

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 359
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->standard_mode:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/android/systemui/R$id;->standard_mode_radio_button:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 362
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->battery_mode:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/android/systemui/R$id;->battery_mode_radio_button:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    .line 363
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_BATTERY:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const/4 p1, 0x3

    goto :goto_3

    .line 360
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_STANDARD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const/4 p1, 0x1

    goto :goto_3

    .line 357
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_PERFORMANCE:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const/4 p1, 0x2

    .line 367
    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {v1, v0}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result v1

    if-eq v1, p1, :cond_6

    .line 371
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->toggleGameModeRadioButtons(I)V

    .line 372
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/GameManager;->setGameMode(Ljava/lang/String;I)V

    .line 373
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->showRestartDialog(I)V

    :cond_6
    return-void
.end method

.method private restartGameActivity()V
    .locals 4

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    .line 402
    invoke-virtual {v2}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    .line 401
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to restart the game: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameMenuActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showRestartDialog(I)V
    .locals 2

    .line 378
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 379
    sget v1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 381
    sget p1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_message_standard:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 383
    sget p1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_message_performance:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 385
    sget p1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_message_battery:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 387
    :cond_2
    :goto_0
    sget p1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_confirm:I

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 392
    sget p1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_cancel:I

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private toggleGameModeRadioButtons(I)V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 450
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mStandardModeRadioButton:Landroid/widget/RadioButton;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 451
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private updateGameModeWidget(Ljava/lang/String;)V
    .locals 9

    .line 314
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {v0, p1}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result p1

    .line 315
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModesSupported:Z

    if-nez v0, :cond_0

    .line 316
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setEnabled(Z)V

    .line 317
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_game_mode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->game_menu_game_mode_title:I

    sget v1, Lcom/android/systemui/R$string;->game_mode_unsupported_description:I

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 322
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setEnabled(Z)V

    .line 323
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    sget p1, Lcom/android/systemui/R$drawable;->ic_game_mode_performance:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget p1, Lcom/android/systemui/R$color;->game_mode_performance_background:I

    .line 324
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    sget p1, Lcom/android/systemui/R$color;->game_mode_performance_tint:I

    .line 325
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result v5

    sget v6, Lcom/android/systemui/R$string;->game_mode_performance_title:I

    sget v7, Lcom/android/systemui/R$string;->game_mode_performance_description:I

    new-instance v8, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda13;

    invoke-direct {v8, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    .line 323
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 331
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setEnabled(Z)V

    .line 332
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    sget p1, Lcom/android/systemui/R$drawable;->ic_game_mode_battery:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget p1, Lcom/android/systemui/R$color;->game_mode_battery_background:I

    .line 333
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    sget p1, Lcom/android/systemui/R$color;->game_mode_battery_tint:I

    .line 334
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result v5

    sget v6, Lcom/android/systemui/R$string;->game_mode_battery_title:I

    sget v7, Lcom/android/systemui/R$string;->game_mode_battery_description:I

    new-instance v8, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    .line 332
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View$OnClickListener;)V

    return-void

    .line 340
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_game_mode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->game_menu_game_mode_title:I

    sget v2, Lcom/android/systemui/R$string;->game_menu_game_mode_description:I

    new-instance v3, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateWidgets()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateGameModeWidget(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mYouTubeLiveWidget:Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->update(Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPlayGamesWidget:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->update(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method initDndButton()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    .line 244
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->game_menu_main:I

    if-ne v0, v1, :cond_0

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameMenuMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$string;->game_dashboard_game_menu_title:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToView(Landroid/view/View;I)V

    .line 226
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateWidgets()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    sget p1, Lcom/android/systemui/R$layout;->game_dashboard_game_menu:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 138
    const-class p1, Landroid/app/GameManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/GameManager;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    .line 139
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->initAvailableGameModes()V

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x10e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortAnimationDuration:I

    .line 143
    sget p1, Lcom/android/systemui/R$id;->game_menu_back_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBackNavigationButton:Landroid/view/View;

    .line 144
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget p1, Lcom/android/systemui/R$id;->game_menu_close_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget p1, Lcom/android/systemui/R$id;->game_menu_main:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameMenuMainView:Landroid/view/View;

    .line 151
    sget p1, Lcom/android/systemui/R$id;->game_menu_screenshot:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    .line 152
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->isScreenshotVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    .line 157
    sget p1, Lcom/android/systemui/R$id;->game_menu_screen_record:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    .line 158
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->isRecordVisible()Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    .line 162
    sget p1, Lcom/android/systemui/R$id;->game_menu_fps:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    .line 163
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->isFpsVisible()Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    .line 175
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    sget p1, Lcom/android/systemui/R$id;->game_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeView:Landroid/view/View;

    .line 181
    sget p1, Lcom/android/systemui/R$drawable;->rounded_rectangle_8dp:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x112002c

    .line 182
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 184
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    sget p1, Lcom/android/systemui/R$id;->performance_mode_radio_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    .line 189
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 192
    sget p1, Lcom/android/systemui/R$id;->performance_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 197
    :goto_0
    sget p1, Lcom/android/systemui/R$id;->standard_mode_radio_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mStandardModeRadioButton:Landroid/widget/RadioButton;

    .line 198
    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    sget p1, Lcom/android/systemui/R$id;->battery_mode_radio_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    .line 200
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    .line 201
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget p1, Lcom/android/systemui/R$id;->battery_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_1

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 209
    :goto_1
    sget p1, Lcom/android/systemui/R$id;->game_menu_dnd:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    .line 210
    sget p1, Lcom/android/systemui/R$id;->standard_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameMenuMainView:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->initDndButton()V

    .line 215
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->initWidgets()V

    .line 216
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateWidgets()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
