.class public final Lcom/android/systemui/media/MediaCarouselController$8;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaHostStatesManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$8;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostStateChanged(ILcom/android/systemui/media/MediaHostState;)V
    .locals 11

    const-string v0, "mediaHostState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$8;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getDesiredLocation$p(Lcom/android/systemui/media/MediaCarouselController;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController$8;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v1}, Lcom/android/systemui/media/MediaCarouselController;->access$getDesiredLocation$p(Lcom/android/systemui/media/MediaCarouselController;)I

    move-result v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged$default(Lcom/android/systemui/media/MediaCarouselController;ILcom/android/systemui/media/MediaHostState;ZJJILjava/lang/Object;)V

    :cond_0
    return-void
.end method
