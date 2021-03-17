.class public Lcom/android/systemui/people/PeopleSpaceActivity;
.super Landroid/app/Activity;
.source "PeopleSpaceActivity.java"


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPeopleManager:Landroid/app/people/IPeopleManager;

.field private mPeopleSpaceLayout:Landroid/view/ViewGroup;

.field private mShowSingleConversation:Z

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$XRiwj1MDIyYudNHRf3Pllluaf_4(Lcom/android/systemui/people/PeopleSpaceActivity;Landroid/app/people/PeopleSpaceTile;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/PeopleSpaceActivity;->lambda$setTileView$0(Landroid/app/people/PeopleSpaceTile;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method private finishActivity()V
    .locals 2

    const-string v0, "PeopleSpaceActivity"

    const-string v1, "Widget added!"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;->PEOPLE_SPACE_WIDGET_ADDED:Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const/4 v0, -0x1

    .line 170
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleSpaceActivity;->setActivityResult(I)V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setTileView$0(Landroid/app/people/PeopleSpaceTile;Landroid/view/View;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleSpaceActivity;->storeWidgetConfiguration(Landroid/app/people/PeopleSpaceTile;)V

    return-void
.end method

.method private setActivityResult(I)V
    .locals 3

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setTileView(Lcom/android/systemui/people/PeopleSpaceTileView;Landroid/app/people/PeopleSpaceTile;)V
    .locals 5

    .line 123
    :try_start_0
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 125
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->getLastInteractionString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p1, v1}, Lcom/android/systemui/people/PeopleSpaceTileView;->setStatus(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/people/PeopleSpaceTileView;->setName(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/people/PeopleSpaceTileView;->setPackageIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/people/PeopleSpaceTileView;->setPersonIcon(Landroid/graphics/drawable/Icon;)V

    .line 132
    new-instance v0, Lcom/android/systemui/people/PeopleSpaceActivity-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/people/PeopleSpaceActivity-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/PeopleSpaceActivity;Landroid/app/people/PeopleSpaceTile;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/people/PeopleSpaceTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PeopleSpaceActivity"

    const-string p2, "Couldn\'t retrieve shortcut information"

    .line 134
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setTileViewsWithPriorityConversations()V
    .locals 6

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleManager:Landroid/app/people/IPeopleManager;

    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v4, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->getTiles(Landroid/content/Context;Landroid/app/INotificationManager;Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/people/PeopleSpaceTile;

    .line 111
    new-instance v2, Lcom/android/systemui/people/PeopleSpaceTileView;

    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleSpaceLayout:Landroid/view/ViewGroup;

    .line 112
    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/people/PeopleSpaceTileView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/people/PeopleSpaceActivity;->setTileView(Lcom/android/systemui/people/PeopleSpaceTileView;Landroid/app/people/PeopleSpaceTile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PeopleSpaceActivity"

    const-string v1, "Couldn\'t retrieve conversations"

    .line 116
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private storeWidgetConfiguration(Landroid/app/people/PeopleSpaceTile;)V
    .locals 5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'s shortcut ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for widget ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceActivity"

    .line 142
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    invoke-static {v0, p1, v2}, Lcom/android/systemui/people/PeopleSpaceUtils;->setStorageForTile(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)V

    .line 149
    iget v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    new-array v0, v0, [I

    .line 151
    iget-object v2, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleManager:Landroid/app/people/IPeopleManager;

    invoke-static {v2, v0, v3, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateSingleConversationWidgets(Landroid/content/Context;[ILandroid/appwidget/AppWidgetManager;Landroid/app/people/IPeopleManager;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching shortcut for PeopleTile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 158
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getUserHandle(Landroid/app/people/PeopleSpaceTile;)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v4, 0x2

    .line 156
    invoke-virtual {v0, v2, v3, p1, v4}, Landroid/content/pm/LauncherApps;->cacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caching shortcut:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceActivity;->finishActivity()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget p1, Lcom/android/systemui/R$layout;->people_space_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 79
    sget p1, Lcom/android/systemui/R$id;->people_space_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleSpaceLayout:Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    const-string p1, "notification"

    .line 82
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mNotificationManager:Landroid/app/INotificationManager;

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "people"

    .line 85
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 84
    invoke-static {p1}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleManager:Landroid/app/people/IPeopleManager;

    .line 86
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 87
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceActivity;->setTileViewsWithPriorityConversations()V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    .line 91
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "people_space_conversation_type"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mShowSingleConversation:Z

    .line 93
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 97
    iget-boolean p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mShowSingleConversation:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    if-eqz p1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceActivity;->finishActivity()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceActivity;->setTileViewsWithPriorityConversations()V

    return-void
.end method
