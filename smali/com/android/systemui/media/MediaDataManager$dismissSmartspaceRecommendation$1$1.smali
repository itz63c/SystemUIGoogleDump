.class final Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Landroid/app/smartspace/SmartspaceTarget;

.field final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataManager;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1$1;->$it:Landroid/app/smartspace/SmartspaceTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1$1;->$it:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "it.smartspaceTargetId"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/systemui/media/MediaDataManager;->access$notifySmartspaceMediaDataRemoved(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;)V

    return-void
.end method
