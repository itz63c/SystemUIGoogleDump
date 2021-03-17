.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;
    }
.end annotation


# static fields
.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;


# instance fields
.field private mBouncerVisible:Z

.field private mDefaultColorState:Landroid/content/res/ColorStateList;

.field private final mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/CharSequence;

.field private mNextMessageColorState:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 55
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 62
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    return-void
.end method

.method private clearMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method public static findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 3

    .line 122
    sget v0, Lcom/android/systemui/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find keyguard_message_area in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private securityMessageChanged(Ljava/lang/CharSequence;)V
    .locals 6

    .line 133
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 135
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    .line 136
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method


# virtual methods
.method onDensityOrFontScaleChanged()V
    .locals 5

    .line 87
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$style;->Keyguard_TextView:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010095

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method onThemeChanged()V
    .locals 4

    .line 72
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010098

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x10000

    .line 75
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 78
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method reloadColor()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 83
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method public setBouncerVisible(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerVisible:Z

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 109
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    :goto_0
    return-void
.end method

.method public setNextMessageColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    return-void
.end method

.method update()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerVisible:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 150
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 152
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 154
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
