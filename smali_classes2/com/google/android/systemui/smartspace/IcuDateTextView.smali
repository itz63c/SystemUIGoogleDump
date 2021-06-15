.class public Lcom/google/android/systemui/smartspace/IcuDateTextView;
.super Lcom/google/android/systemui/smartspace/DoubleShadowTextView;
.source "IcuDateTextView.java"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mFormatter:Landroid/icu/text/DateFormat;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mText:Ljava/lang/String;

.field private mWasVisible:Z


# direct methods
.method public static synthetic $r8$lambda$kx7Q_m1XWJIQX0jsJkGEObWRF2U(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->lambda$registerReceiver$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p2, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;-><init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/IcuDateTextView;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->onTimeChanged(Z)V

    return-void
.end method

.method private synthetic lambda$registerReceiver$0()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->onTimeChanged(Z)V

    return-void
.end method

.method private onTimeChanged(Z)V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mWasVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/bcsmartspace/R$string;->smartspace_icu_date_pattern:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    .line 79
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mText:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v0, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mApplicationContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 51
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mWasVisible:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->registerReceiver()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->unregisterReceiver()V

    .line 56
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mWasVisible:Z

    return-void
.end method
