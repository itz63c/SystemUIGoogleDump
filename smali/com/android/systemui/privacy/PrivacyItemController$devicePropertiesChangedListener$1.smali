.class public final Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyItemController;-><init>(Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,392:1\n1819#2,2:393\n1819#2,2:395\n1819#2,2:397\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1\n*L\n138#1,2:393\n143#1,2:395\n148#1,2:397\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privacy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "permissions_hub_2_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "location_indicators_enabled"

    const-string v3, "camera_mic_icons_enabled"

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$setAllIndicatorsAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 138
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItemController;->getAllIndicatorsAvailable()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->onFlagAllChanged(Z)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$setMicCameraAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 143
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->onFlagMicCameraChanged(Z)V

    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->setLocationAvailable(Z)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 148
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->onFlagLocationChanged(Z)V

    goto :goto_2

    .line 150
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getInternalUiExecutor$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V

    :cond_7
    return-void
.end method
