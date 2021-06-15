.class public Lcom/android/keyguard/NumPadKey;
.super Landroid/view/ViewGroup;
.source "NumPadKey.java"


# static fields
.field static sKlondike:[Ljava/lang/String;


# instance fields
.field private mAnimator:Lcom/android/keyguard/NumPadAnimator;

.field private mDigit:I

.field private final mDigitText:Landroid/widget/TextView;

.field private final mKlondikeText:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPM:Landroid/os/PowerManager;

.field private mTextView:Lcom/android/keyguard/PasswordTextView;

.field private mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    sget v0, Lcom/android/systemui/R$attr;->numPadKeyStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 81
    sget v0, Lcom/android/systemui/R$layout;->keyguard_num_pad_key:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 52
    new-instance v0, Lcom/android/keyguard/NumPadKey$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/NumPadKey$1;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 88
    sget-object v1, Lcom/android/systemui/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 92
    :try_start_0
    sget p3, Lcom/android/systemui/R$styleable;->NumPadKey_digit:I

    iget v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 93
    sget p3, Lcom/android/systemui/R$styleable;->NumPadKey_textView:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    iget-object p2, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance p2, Lcom/android/keyguard/LiftToActivateListener;

    const-string p3, "accessibility"

    .line 100
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p2, p3}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    .line 99
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 102
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/NumPadKey;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 103
    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 106
    invoke-virtual {p2, p4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    sget p2, Lcom/android/systemui/R$id;->digit_text:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 109
    iget p3, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget p3, Lcom/android/systemui/R$id;->klondike_text:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 112
    iget p4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-ltz p4, :cond_2

    .line 113
    sget-object p4, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez p4, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/systemui/R$array;->lockscreen_num_pad_klondike:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p4

    sput-object p4, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 116
    :cond_0
    sget-object p4, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz p4, :cond_2

    array-length v0, p4

    iget v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v0, v1, :cond_2

    .line 117
    aget-object p4, p4, v1

    .line 118
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 120
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result p4

    const/16 v0, 0x8

    if-eq p4, v0, :cond_2

    const/4 p4, 0x4

    .line 122
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    new-instance p2, Lcom/android/keyguard/NumPadAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/RippleDrawable;

    sget p4, Lcom/android/systemui/R$style;->NumPadKey:I

    invoke-direct {p2, p1, p3, p4}, Lcom/android/keyguard/NumPadAnimator;-><init>(Landroid/content/Context;Landroid/graphics/drawable/RippleDrawable;I)V

    iput-object p2, p0, Lcom/android/keyguard/NumPadKey;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    return-void

    :catchall_0
    move-exception p0

    .line 95
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    throw p0
.end method

.method static synthetic access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/NumPadKey;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/NumPadKey;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    return p0
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 197
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    .line 173
    iget-object p2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    add-int p4, p1, p2

    .line 175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v0, p4

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p4, v1

    add-int/2addr p1, v0

    .line 179
    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v0, v3, p1}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float p1, p1

    int-to-float v0, p2

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p2, p1

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p4

    invoke-virtual {v0, p4, p1, v1, p2}, Landroid/widget/TextView;->layout(IIII)V

    .line 186
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    sub-int/2addr p5, p3

    invoke-virtual {p0, p5}, Lcom/android/keyguard/NumPadAnimator;->onLayout(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 160
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->doHapticKeyClick()V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadAnimator;->start()V

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reloadColors()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010038

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/NumPadAnimator;->reloadColors(Landroid/content/Context;)V

    return-void
.end method

.method public userActivity()V
    .locals 3

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method
