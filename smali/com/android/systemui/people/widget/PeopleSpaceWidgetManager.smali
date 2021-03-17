.class public Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;
.super Ljava/lang/Object;
.source "PeopleSpaceWidgetManager.java"


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetService:Lcom/android/internal/appwidget/IAppWidgetService;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

.field private mPeopleManager:Landroid/app/people/IPeopleManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string v1, "constructor"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-string p1, "appwidget"

    .line 76
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetService:Lcom/android/internal/appwidget/IAppWidgetService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string v1, "constructor"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 63
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string p1, "people"

    .line 65
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/IPeopleManager;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 2

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string v1, "attach"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    return-void
.end method

.method protected setAppWidgetManager(Lcom/android/internal/appwidget/IAppWidgetService;Landroid/appwidget/AppWidgetManager;Landroid/app/people/IPeopleManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 86
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 87
    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/IPeopleManager;

    return-void
.end method

.method public updateWidgetWithNotificationChanged(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V
    .locals 9

    .line 127
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_space_small_avatar_tile:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string/jumbo v1, "updateWidgetWithNotificationChanged called"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "people_space_conversation_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    return-void

    .line 136
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "Sbn shortcut id is null"

    .line 138
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetService:Lcom/android/internal/appwidget/IAppWidgetService;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 144
    array-length v2, v2

    if-nez v2, :cond_3

    const-string p0, "No app widget ids returned"

    .line 145
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 150
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/android/systemui/people/PeopleSpaceUtils;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v3, Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "No stored widget ids"

    .line 153
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing notification change, key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/IPeopleManager;

    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateWidgetWithNotificationChanged(Landroid/app/people/IPeopleManager;Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;Landroid/appwidget/AppWidgetManager;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public updateWidgets()V
    .locals 5

    const-string v0, "PeopleSpaceWidgetMgr"

    :try_start_0
    const-string/jumbo v1, "updateWidgets called"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetService:Lcom/android/internal/appwidget/IAppWidgetService;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 99
    array-length v2, v1

    if-nez v2, :cond_0

    const-string p0, "no widgets to update"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " widgets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "people_space_conversation_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/IPeopleManager;

    invoke-static {v2, v1, v3, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateSingleConversationWidgets(Landroid/content/Context;[ILandroid/appwidget/AppWidgetManager;Landroid/app/people/IPeopleManager;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$id;->widget_list_view:I

    invoke-interface {v2, p0, v1, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
