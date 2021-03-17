.class public Lcom/android/systemui/settings/brightness/BrightnessSlider;
.super Lcom/android/systemui/util/ViewController;
.source "BrightnessSlider.java"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Landroid/view/View;",
        ">;",
        "Lcom/android/systemui/settings/brightness/ToggleSlider;"
    }
.end annotation


# instance fields
.field private final mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTracking:Z

.field private final mUseMirror:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/systemui/settings/brightness/BrightnessSliderView;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 189
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 230
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 67
    iput-boolean p3, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUseMirror:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mTracking:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mTracking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/BrightnessSliderView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->enableSlider(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    return-object p0
.end method

.method private copyEventToMirror(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    .line 106
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->mirrorTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return p0
.end method

.method private enableSlider(Z)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->enableSlider(Z)V

    return-void
.end method

.method private setMirror(Lcom/android/systemui/settings/brightness/ToggleSlider;)V
    .locals 1

    .line 117
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setChecked(Z)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getMax()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessSlider-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isChecked()Z

    move-result p0

    return p0
.end method

.method public mirrorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->copyEventToMirror(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onViewAttached()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setChecked(Z)V

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setMax(I)V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz p0, :cond_0

    .line 167
    invoke-interface {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMirrorControllerAndMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUseMirror:Z

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getToggleSlider()Lcom/android/systemui/settings/brightness/ToggleSlider;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setMirror(Lcom/android/systemui/settings/brightness/ToggleSlider;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    :goto_0
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setValue(I)V

    .line 179
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz p0, :cond_0

    .line 180
    invoke-interface {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    :cond_0
    return-void
.end method
