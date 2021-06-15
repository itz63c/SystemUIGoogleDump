.class Lcom/google/android/systemui/smartspace/PageIndicator$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/PageIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/PageIndicator;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator$1;->this$0:Lcom/google/android/systemui/smartspace/PageIndicator;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 56
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator$1;->this$0:Lcom/google/android/systemui/smartspace/PageIndicator;

    .line 58
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/PageIndicator;->access$000(Lcom/google/android/systemui/smartspace/PageIndicator;)Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator$1;->this$0:Lcom/google/android/systemui/smartspace/PageIndicator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/PageIndicator;->access$102(Lcom/google/android/systemui/smartspace/PageIndicator;Z)Z

    .line 61
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator$1;->this$0:Lcom/google/android/systemui/smartspace/PageIndicator;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->access$200(Lcom/google/android/systemui/smartspace/PageIndicator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/PageIndicator$1;->this$0:Lcom/google/android/systemui/smartspace/PageIndicator;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/PageIndicator;->access$200(Lcom/google/android/systemui/smartspace/PageIndicator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->access$300(Lcom/google/android/systemui/smartspace/PageIndicator;I)V

    :cond_1
    return-void
.end method
