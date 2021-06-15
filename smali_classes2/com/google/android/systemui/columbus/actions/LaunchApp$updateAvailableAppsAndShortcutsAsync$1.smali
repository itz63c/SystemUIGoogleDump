.class final Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;
.super Ljava/lang/Object;
.source "LaunchApp.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getAvailableApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getAvailableShortcuts$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 118
    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v3}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getAvailableApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "appInfo.packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    .line 121
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    const-string v3, "appInfo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$addShortcutsForApp(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getMainHandler$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
