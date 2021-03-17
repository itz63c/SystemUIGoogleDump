.class public Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;
.super Ljava/lang/Object;
.source "PeopleSpaceWidgetRemoteViewsFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPeopleManager:Landroid/app/people/IPeopleManager;

.field private mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mTiles:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setTileViewsWithPriorityConversations()V
    .locals 5

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mPeopleManager:Landroid/app/people/IPeopleManager;

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->getTiles(Landroid/content/Context;Landroid/app/INotificationManager;Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mTiles:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PeopleSpaceWRVFactory"

    const-string v1, "Couldn\'t retrieve conversations"

    .line 79
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 6

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getViewAt called, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceWRVFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->people_space_widget_item:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mTiles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/people/PeopleSpaceTile;

    .line 108
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 108
    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/people/PeopleSpaceUtils;->getLastInteractionString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .line 111
    sget v3, Lcom/android/systemui/R$id;->status:I

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    sget v2, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 114
    sget v2, Lcom/android/systemui/R$id;->package_icon:I

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 117
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 114
    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 120
    sget p0, Lcom/android/systemui/R$id;->person_icon:I

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 122
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v2, "extra_tile_id"

    .line 123
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_package_name"

    .line 125
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_uid"

    .line 126
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUid()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    sget p1, Lcom/android/systemui/R$id;->item:I

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Couldn\'t retrieve shortcut information"

    .line 129
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "PeopleSpaceWRVFactory"

    const-string v1, "onCreate called"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    .line 61
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mNotificationManager:Landroid/app/INotificationManager;

    .line 62
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "people"

    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mPeopleManager:Landroid/app/people/IPeopleManager;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->setTileViewsWithPriorityConversations()V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    const-string v0, "PeopleSpaceWRVFactory"

    const-string v1, "onDataSetChanged called"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->setTileViewsWithPriorityConversations()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
