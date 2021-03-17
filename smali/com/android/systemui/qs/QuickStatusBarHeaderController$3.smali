.class Lcom/android/systemui/qs/QuickStatusBarHeaderController$3;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$3;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$3;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$700(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    return-object p0
.end method
