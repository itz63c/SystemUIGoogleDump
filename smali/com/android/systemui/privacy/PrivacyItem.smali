.class public final Lcom/android/systemui/privacy/PrivacyItem;
.super Ljava/lang/Object;
.source "PrivacyItem.kt"


# instance fields
.field private final application:Lcom/android/systemui/privacy/PrivacyApplication;

.field private final privacyType:Lcom/android/systemui/privacy/PrivacyType;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;)V
    .locals 1

    const-string v0, "privacyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/privacy/PrivacyItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getApplication()Lcom/android/systemui/privacy/PrivacyApplication;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    return-object p0
.end method

.method public final getPrivacyType()Lcom/android/systemui/privacy/PrivacyType;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toLog()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyType;->getLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication;->getUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "))"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyItem(privacyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", application="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
