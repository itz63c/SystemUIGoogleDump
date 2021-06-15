.class public Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;
.super Ljava/lang/Object;
.source "PlayGamesWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$PlayGamesWidgetResultReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWidgetResultReceiver:Landroid/os/ResultReceiver;

.field private final mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;


# direct methods
.method public static synthetic $r8$lambda$SnFrBXwmoRQ2SzADZtMrNnq5OjY(Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->lambda$update$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4MqZvK52zUcX-xceuKQhvx7vjs(Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->lambda$updateFromData$1(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/WidgetView;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    .line 117
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mMainHandler:Landroid/os/Handler;

    .line 118
    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 119
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->createPlayGamesWidgetResultReceiver()Landroid/os/ResultReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mWidgetResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->updateFromData(Landroid/os/Bundle;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;
    .locals 3

    .line 105
    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->hasPlayGamesWidget(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->game_menu_widget:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/WidgetView;

    .line 110
    new-instance v0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;-><init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/WidgetView;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method

.method private createPlayGamesWidgetResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .line 198
    new-instance v0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$PlayGamesWidgetResultReceiver;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$PlayGamesWidgetResultReceiver;-><init>(Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;Landroid/os/Handler;)V

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, p0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 202
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 203
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method private static hasPlayGamesWidget(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.play.games"

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 88
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 89
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, "com.google.android.play.games.dashboard.tile.provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "PlayGamesWidget"

    const-string v1, "Play Games package not found."

    .line 94
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private synthetic lambda$update$0(Ljava/lang/String;)V
    .locals 5

    const-string v0, "PlayGamesWidget"

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "foregroundAppPackageName"

    .line 136
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mWidgetResultReceiver:Landroid/os/ResultReceiver;

    const-string v2, "resultReceiver"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    :try_start_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "com.google.android.play.games.dashboard.tile.provider"

    const-string v3, "getGameMenuWidgetInfo"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p0, "Play Games widget provider returns no data."

    .line 151
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "resultCode"

    .line 155
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string p0, "Play Games widget provider issues asynchronous update."

    .line 158
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v1, :cond_2

    const-string p0, "Play Games widget provider returns UNKNOWN"

    .line 163
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->updateFromData(Landroid/os/Bundle;)V

    return-void

    :catch_0
    const-string p0, "Failed to call Play Games widget provider."

    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$updateFromData$1(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 7

    .line 180
    :try_start_0
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_PLAY_GAMES_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 181
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mContext:Landroid/content/Context;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 182
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 181
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PlayGamesWidget"

    const-string p1, "Failed to start Play Games PendingIntent."

    .line 184
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateFromData(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "icon"

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/Bitmap;

    const-string v0, "title"

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "tipText"

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "description"

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "onClickPendingIntent"

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string v1, "isActive"

    .line 176
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    new-instance v1, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;Landroid/app/PendingIntent;)V

    move-object v6, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v6, v0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setEnabled(Z)V

    .line 190
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setLoading(Z)V

    return-void
.end method


# virtual methods
.method public getView()Lcom/google/android/systemui/gamedashboard/WidgetView;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    return-object p0
.end method

.method public update(Ljava/lang/String;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setLoading(Z)V

    .line 134
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
