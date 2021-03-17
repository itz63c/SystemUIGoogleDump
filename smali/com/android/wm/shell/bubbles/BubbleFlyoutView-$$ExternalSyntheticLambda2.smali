.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;->f$2:F

    iput p4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;->f$2:F

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;->f$3:F

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->$r8$lambda$Hik-6Z-WfHGGhz64dtGImQpyu44(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FF)V

    return-void
.end method
