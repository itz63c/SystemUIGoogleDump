.class Lcom/google/android/systemui/fingerprint/UdfpsHbmController$1;
.super Ljava/lang/Object;
.source "UdfpsHbmController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/fingerprint/UdfpsHbmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$1;->this$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$1;->this$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

    invoke-static {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->access$002(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Landroid/hardware/fingerprint/IUdfpsHbmListener;)Landroid/hardware/fingerprint/IUdfpsHbmListener;

    return-void
.end method
