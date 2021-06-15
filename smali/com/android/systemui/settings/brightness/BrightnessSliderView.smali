.class public Lcom/android/systemui/settings/brightness/BrightnessSliderView;
.super Landroid/widget/FrameLayout;
.source "BrightnessSliderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

.field private mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

.field private mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getMax()I
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    sget v0, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 151
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 81
    iget-object p0, p0, Landroid/widget/FrameLayout;->mParent:Landroid/view/ViewParent;

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

    return-void
.end method

.method public setOnInterceptListener(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
