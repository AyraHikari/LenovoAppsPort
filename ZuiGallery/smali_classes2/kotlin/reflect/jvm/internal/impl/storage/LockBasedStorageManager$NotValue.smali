.class final enum Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
.super Ljava/lang/Enum;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NotValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 286
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v1, "NOT_COMPUTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 287
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v1, "COMPUTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 288
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v1, "RECURSION_WAS_DETECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 285
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    aput-object v5, v1, v2

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
    .locals 1

    .line 285
    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
    .locals 1

    .line 285
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-object v0
.end method
