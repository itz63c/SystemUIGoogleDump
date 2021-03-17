.class public Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;
.super Landroid/app/Activity;
.source "TvNotificationPanelActivity.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;


# instance fields
.field private mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

.field private mNotificationPlaceholder:Landroid/view/View;

.field private mPanelAlreadyOpen:Z

.field private mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

.field private final mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    return-void
.end method

.method private maybeClosePanel(Landroid/content/Intent;)Z
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.CLOSE_NOTIFICATION_HANDLER_PANEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.action.TOGGLE_NOTIFICATION_HANDLER_PANEL"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public notificationsUpdated(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;->setNotifications(Landroid/util/SparseArray;)V

    .line 78
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationPlaceholder:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->maybeClosePanel(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    .line 61
    sget p1, Lcom/android/systemui/R$layout;->tv_notification_panel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    sget p1, Lcom/android/systemui/R$id;->no_tv_notifications:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationPlaceholder:Landroid/view/View;

    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    .line 66
    sget p1, Lcom/android/systemui/R$id;->notifications_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    sget v0, Lcom/android/systemui/R$dimen;->tv_notification_panel_width:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setColumnWidth(I)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->setTvNotificationListener(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->getCurrentNotifications()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->notificationsUpdated(Landroid/util/SparseArray;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->setTvNotificationListener(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->maybeClosePanel(Landroid/content/Intent;)Z

    return-void
.end method
