.class final Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;
.super Ljava/lang/Object;
.source "KeyguardClockSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardClockSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Patterns"
.end annotation


# static fields
.field static sCacheKey:Ljava/lang/String;

.field static sClockView12:Ljava/lang/String;

.field static sClockView24:Ljava/lang/String;


# direct methods
.method static update(Landroid/content/res/Resources;)V
    .locals 5

    .line 318
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 319
    sget v1, Lcom/android/systemui/R$string;->clock_12hr_format:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    sget v2, Lcom/android/systemui/R$string;->clock_24hr_format:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    sget-object v3, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView12:Ljava/lang/String;

    const-string v3, "a"

    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    sget-object v1, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView12:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView12:Ljava/lang/String;

    .line 331
    :cond_1
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView24:Ljava/lang/String;

    const/16 v0, 0x3a

    const v1, 0xee01

    .line 334
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView24:Ljava/lang/String;

    .line 335
    sget-object p0, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView12:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView12:Ljava/lang/String;

    .line 337
    sput-object v2, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sCacheKey:Ljava/lang/String;

    return-void
.end method
