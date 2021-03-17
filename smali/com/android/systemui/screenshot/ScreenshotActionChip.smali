.class public Lcom/android/systemui/screenshot/ScreenshotActionChip;
.super Landroid/widget/FrameLayout;
.source "ScreenshotActionChip.java"


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mIsPending:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$YYmy_EMvNzh8dI0lg0-4ke5WanU(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->lambda$setPendingIntent$0(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIsPending:Z

    return-void
.end method

.method private static synthetic lambda$setPendingIntent$0(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    .line 85
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScreenshotActionChip"

    const-string p2, "Intent cancelled"

    .line 87
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 60
    sget v0, Lcom/android/systemui/R$id;->screenshot_action_chip_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIconView:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/android/systemui/R$id;->screenshot_action_chip_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Icon;Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    if-nez p2, :cond_0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIconView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method setIsPending(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIsPending:Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPressed(Z)V

    return-void
.end method

.method setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotActionChip-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotActionChip-$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIsPending:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    return-void
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
