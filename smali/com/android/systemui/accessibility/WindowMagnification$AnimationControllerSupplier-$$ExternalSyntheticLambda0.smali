.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->onNavigationModeChanged(I)V

    return-void
.end method
