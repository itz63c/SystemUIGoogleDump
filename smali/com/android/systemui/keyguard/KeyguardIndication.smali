.class public Lcom/android/systemui/keyguard/KeyguardIndication;
.super Ljava/lang/Object;
.source "KeyguardIndication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardIndication$Builder;
    }
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mTextColor:Landroid/content/res/ColorStateList;

    .line 52
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/keyguard/KeyguardIndication$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "KeyguardIndication{"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mOnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndication;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
