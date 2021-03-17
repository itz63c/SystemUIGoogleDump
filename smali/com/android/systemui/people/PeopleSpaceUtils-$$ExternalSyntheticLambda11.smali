.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/app/people/PeopleSpaceTile;

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->$r8$lambda$fvT8Eg2yGHVy9E6P2FnjojJHN-k(Ljava/lang/String;Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    return p0
.end method
