.class public final enum Lcom/zui/gallery/app/TabManager$TabIndex;
.super Ljava/lang/Enum;
.source "TabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/app/TabManager$TabIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/app/TabManager$TabIndex;

.field public static final enum TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

.field public static final enum TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 208
    new-instance v0, Lcom/zui/gallery/app/TabManager$TabIndex;

    const-string v1, "TAB_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/app/TabManager$TabIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    .line 210
    new-instance v0, Lcom/zui/gallery/app/TabManager$TabIndex;

    const-string v1, "TAB_ALBUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/app/TabManager$TabIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zui/gallery/app/TabManager$TabIndex;

    .line 206
    sget-object v4, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/zui/gallery/app/TabManager$TabIndex;->$VALUES:[Lcom/zui/gallery/app/TabManager$TabIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/app/TabManager$TabIndex;
    .locals 1

    .line 206
    const-class v0, Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/app/TabManager$TabIndex;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/app/TabManager$TabIndex;
    .locals 1

    .line 206
    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->$VALUES:[Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {v0}, [Lcom/zui/gallery/app/TabManager$TabIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/app/TabManager$TabIndex;

    return-object v0
.end method
