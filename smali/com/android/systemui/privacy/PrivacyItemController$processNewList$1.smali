.class final synthetic Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "PrivacyItemController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyItemController;->processNewList(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/privacy/PrivacyItem;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;

    invoke-direct {v0}, Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;-><init>()V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;->INSTANCE:Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lcom/android/systemui/privacy/PrivacyItem;

    const/4 v1, 0x1

    const-string v3, "toLog"

    const-string v4, "toLog()Ljava/lang/String;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;->invoke(Lcom/android/systemui/privacy/PrivacyItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/privacy/PrivacyItem;)Ljava/lang/String;
    .locals 0

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItem;->toLog()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
