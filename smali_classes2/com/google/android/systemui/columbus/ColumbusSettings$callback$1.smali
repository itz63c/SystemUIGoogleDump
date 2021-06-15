.class final Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ColumbusSettings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusSettings;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings$callback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1819#2,2:150\n1819#2,2:152\n1819#2,2:154\n1819#2,2:156\n1819#2,2:158\n*E\n*S KotlinDebug\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings$callback$1\n*L\n48#1,2:150\n54#1,2:152\n60#1,2:154\n66#1,2:156\n72#1,2:158\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->invoke(Landroid/net/Uri;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_ENABLED_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result p1

    .line 48
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    .line 49
    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onColumbusEnabledChange(Z)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_AP_SENSOR_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->useApSensor()Z

    move-result p1

    .line 54
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    .line 55
    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onUseApSensorChange(Z)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_ACTION_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    .line 61
    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedActionChange(Ljava/lang/String;)V

    goto :goto_2

    .line 64
    :cond_2
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_LAUNCH_APP_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    .line 67
    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedAppChange(Ljava/lang/String;)V

    goto :goto_3

    .line 70
    :cond_3
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_LAUNCH_APP_SHORTCUT_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAppShortcut()Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    .line 73
    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedAppShortcutChange(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string p0, "Unknown setting change: "

    .line 77
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
