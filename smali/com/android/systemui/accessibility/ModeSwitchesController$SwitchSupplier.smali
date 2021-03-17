.class Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;
.super Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
.source "ModeSwitchesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/accessibility/ModeSwitchesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/accessibility/DisplayIdIndexSupplier<",
        "Lcom/android/systemui/accessibility/MagnificationModeSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 103
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;-><init>(Landroid/hardware/display/DisplayManager;)V

    .line 104
    iput-object p1, p0, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/view/Display;)Lcom/android/systemui/accessibility/MagnificationModeSwitch;
    .locals 1

    .line 109
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    .line 112
    :goto_0
    new-instance p1, Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method protected bridge synthetic createInstance(Landroid/view/Display;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;->createInstance(Landroid/view/Display;)Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    move-result-object p0

    return-object p0
.end method
