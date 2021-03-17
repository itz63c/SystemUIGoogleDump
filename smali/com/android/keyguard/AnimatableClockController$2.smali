.class Lcom/android/keyguard/AnimatableClockController$2;
.super Ljava/lang/Object;
.source "AnimatableClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AnimatableClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/AnimatableClockController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AnimatableClockController;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockController$2;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController$2;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-static {v0, p1}, Lcom/android/keyguard/AnimatableClockController;->access$102(Lcom/android/keyguard/AnimatableClockController;Z)Z

    .line 148
    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockController$2;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-static {p1}, Lcom/android/keyguard/AnimatableClockController;->access$200(Lcom/android/keyguard/AnimatableClockController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/AnimatableClockView;

    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockController$2;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-static {p0}, Lcom/android/keyguard/AnimatableClockController;->access$100(Lcom/android/keyguard/AnimatableClockController;)Z

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/AnimatableClockView;->animateDoze(ZZ)V

    return-void
.end method
