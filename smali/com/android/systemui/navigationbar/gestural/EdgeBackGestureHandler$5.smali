.class Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelBack()V
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1700(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1500(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Lcom/android/systemui/recents/OverviewProxyService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1300(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 272
    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1300(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v4, v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1400(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z

    move-result p0

    xor-int/lit8 v6, p0, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 271
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    return-void
.end method

.method public triggerBack()V
    .locals 10

    .line 253
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1100(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 254
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;II)Z

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;II)Z

    move-result v1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Triggered back: down="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", up="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoBackGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1500(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Lcom/android/systemui/recents/OverviewProxyService;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1300(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 262
    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1300(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v7, v0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1400(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 261
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    .line 263
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1600(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    :cond_0
    invoke-static {p0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$1700(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    return-void
.end method
