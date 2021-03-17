.class public Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler;
.super Lcom/android/systemui/SystemUI;
.source "PeopleSpaceWidgetEnabler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 5

    const-string v0, "PeopleSpaceWdgtEnabler"

    const-string v1, "Starting service"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/FeatureFlags;->isPeopleTileEnabled()Z

    move-result v1

    .line 51
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x1

    if-eqz v1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v3, v1, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Error enabling People Space widget:"

    .line 58
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
