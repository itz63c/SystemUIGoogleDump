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
.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

.field private mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field private final mText:Ljava/lang/CharSequence;

.field private mToggle:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    sget-object v0, Lcom/android/systemui/R$styleable;->ToggleSliderView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    sget p2, Lcom/android/systemui/R$styleable;->ToggleSliderView_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mText:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableSlider(Z)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public getMax()I
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggle:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 80
    sget v0, Lcom/android/systemui/R$id;->toggle:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggle:Landroid/widget/CompoundButton;

    .line 82
    sget v0, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 84
    sget v0, Lcom/android/systemui/R$id;->label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggle:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 134
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggle:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
