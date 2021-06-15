.class Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingerDrawerItemClickListener"
.end annotation


# instance fields
.field private final mClickedRingerMode:I

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public static synthetic $r8$lambda$0G9aet994xoLpH5_HGbu98uXIv4(Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 2009
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2010
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 3

    .line 2031
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2033
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    .line 2035
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5900(Lcom/android/systemui/volume/VolumeDialogImpl;I)F

    move-result v1

    .line 2034
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    .line 2038
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5900(Lcom/android/systemui/volume/VolumeDialogImpl;I)F

    move-result v1

    .line 2037
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2041
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2042
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$6000(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2015
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5300(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 2017
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5400(Lcom/android/systemui/volume/VolumeDialogImpl;I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2302(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2018
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2019
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 2018
    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5400(Lcom/android/systemui/volume/VolumeDialogImpl;I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2202(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2023
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5500(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2025
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2026
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2027
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 2028
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    .line 2029
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;)V

    .line 2030
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2045
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2046
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    .line 2047
    invoke-static {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5900(Lcom/android/systemui/volume/VolumeDialogImpl;I)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2048
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2050
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    .line 2051
    invoke-static {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5900(Lcom/android/systemui/volume/VolumeDialogImpl;I)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2052
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method
