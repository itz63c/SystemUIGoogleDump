.class public Lcom/android/systemui/people/widget/PeopleSpaceWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "PeopleSpaceWidgetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    const-string v0, "PeopleSpaceWidgetSvc"

    const-string v1, "onGetViewFactory called"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;

    invoke-virtual {p0}, Landroid/widget/RemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
