.class public final synthetic Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/CropView;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/CropView;

    iput-object p2, p0, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    iput p3, p0, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;->f$3:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/CropView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    iget v2, p0, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;->f$2:F

    iget p0, p0, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;->f$3:F

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/systemui/screenshot/CropView;->$r8$lambda$F63u03q5b_gO5ivg1ubWsI0c5cU(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method