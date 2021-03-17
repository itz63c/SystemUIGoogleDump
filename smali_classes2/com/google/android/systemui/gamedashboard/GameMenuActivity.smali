.class public final Lcom/google/android/systemui/gamedashboard/GameMenuActivity;
.super Landroid/app/Activity;
.source "GameMenuActivity.java"


# instance fields
.field private final mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

.field private mDndEnabled:Z

.field private mFpsEnabled:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mScreenRecordEnabled:Z

.field private mScreenshotEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$5ROu3H0oSIkjhAkuxxyKG1_6pjw(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$4(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5nvpboyV61heuAzGMT47TfyAQko(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LoWWJfCvAWBtRsuw7NWi-10pEBk(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cKauWdWMAKdsR2dzbDGdEvYCnjo(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$updateYoutubeLiveStreamWidget$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$niIAhSPyo2DGNJk86QXP19qmZvI(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPthuPcP_21Lyn6IAr7z1_0S69A(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/app/NotificationManager;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mScreenshotEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mScreenRecordEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mFpsEnabled:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndEnabled:Z

    .line 66
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    .line 67
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static createIntentForStart(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private hasYoutubeLiveStream()Z
    .locals 2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.intent.action.CREATE_LIVE_STREAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.youtube"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    .line 143
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onCreate$4(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->isToggled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    return-void
.end method

.method private synthetic lambda$updateYoutubeLiveStreamWidget$5(Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onYoutubeLiveStreamWidgetClicked()V

    return-void
.end method

.method private onYoutubeLiveStreamWidgetClicked()V
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.intent.action.CREATE_LIVE_STREAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.youtube"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android-app"

    .line 126
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.REFERRER"

    .line 129
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGameAppName()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.extra.TITLE"

    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x1

    const-string v2, "SCREENCAST"

    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateWidgets()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateYoutubeLiveStreamWidget()V

    return-void
.end method

.method private updateYoutubeLiveStreamWidget()V
    .locals 3

    .line 100
    sget v0, Lcom/android/systemui/R$id;->youtube_live_stream_widget:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->hasYoutubeLiveStream()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x4

    .line 103
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 107
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 108
    sget v2, Lcom/android/systemui/R$drawable;->ic_youtube_logo:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    sget v2, Lcom/android/systemui/R$string;->game_menu_youtube_live_stream_widget_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    sget v1, Lcom/android/systemui/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    sget v2, Lcom/android/systemui/R$string;->game_menu_youtube_live_stream_widget_description:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget p1, Lcom/android/systemui/R$layout;->game_dashboard_game_menu:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    sget p1, Lcom/android/systemui/R$id;->game_menu_close_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget p1, Lcom/android/systemui/R$id;->game_menu_screenshot:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda4;->INSTANCE:Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget p1, Lcom/android/systemui/R$id;->game_menu_screen_record:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda5;->INSTANCE:Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda5;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget p1, Lcom/android/systemui/R$id;->game_menu_fps:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget p1, Lcom/android/systemui/R$id;->game_menu_dnd:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    .line 81
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(Z)V

    .line 83
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 92
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateWidgets()V

    return-void
.end method
