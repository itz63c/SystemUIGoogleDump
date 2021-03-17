.class public Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
.super Ljava/lang/Object;
.source "SuperStatusBarViewFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

.field private mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field private final mNotificationShelfComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

.field private mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field private mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    .line 54
    iput-object p3, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    return-void
.end method


# virtual methods
.method public getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->super_notification_shade:I

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_1

    return-object v0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "R.layout.super_notification_shade could not be properly inflated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNotificationShelfController(Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/NotificationShelfController;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    if-eqz v0, :cond_0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_shelf:I

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    .line 123
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;->notificationShelf(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;->build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;->getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelfController;->init()V

    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    return-object p0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "R.layout.status_bar_notification_shelf could not be properly inflated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->super_status_bar:I

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_1

    return-object v0

    .line 93
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "R.layout.super_status_bar could not be properly inflated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
