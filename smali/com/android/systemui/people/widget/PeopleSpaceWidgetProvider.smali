.class public Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PeopleSpaceWidgetProvider.java"


# instance fields
.field public mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    return-void
.end method

.method private ensurePeopleSpaceWidgetManagerInitialized()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->init()V

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->ensurePeopleSpaceWidgetManagerInitialized()V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->onAppWidgetOptionsChanged(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->ensurePeopleSpaceWidgetManagerInitialized()V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->deleteWidgets([I)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const-string p1, "PeopleSpaceWidgetPvd"

    const-string p2, "onUpdate called"

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->ensurePeopleSpaceWidgetManagerInitialized()V

    .line 54
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p0, p3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgets([I)V

    return-void
.end method

.method public setPeopleSpaceWidgetManager(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    return-void
.end method
