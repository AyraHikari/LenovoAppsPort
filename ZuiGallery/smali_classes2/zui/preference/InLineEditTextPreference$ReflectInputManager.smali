.class Lzui/preference/InLineEditTextPreference$ReflectInputManager;
.super Lzui/util/ReflectClass;
.source "InLineEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/InLineEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInputManager"
.end annotation


# static fields
.field private static mInstance:Lzui/preference/InLineEditTextPreference$ReflectInputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 401
    new-instance v0, Lzui/preference/InLineEditTextPreference$ReflectInputManager;

    invoke-direct {v0}, Lzui/preference/InLineEditTextPreference$ReflectInputManager;-><init>()V

    sput-object v0, Lzui/preference/InLineEditTextPreference$ReflectInputManager;->mInstance:Lzui/preference/InLineEditTextPreference$ReflectInputManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.view.inputmethod.InputMethodManager"

    .line 404
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public focusIn(Landroid/view/View;)V
    .locals 5

    .line 413
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference$ReflectInputManager;->mRealObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lzui/preference/InLineEditTextPreference$ReflectInputManager;->mInstance:Lzui/preference/InLineEditTextPreference$ReflectInputManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "focusIn"

    invoke-virtual {v0, p1, v2, v3, v1}, Lzui/preference/InLineEditTextPreference$ReflectInputManager;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 409
    sget-object v0, Lzui/preference/InLineEditTextPreference$ReflectInputManager;->mInstance:Lzui/preference/InLineEditTextPreference$ReflectInputManager;

    iput-object p1, v0, Lzui/preference/InLineEditTextPreference$ReflectInputManager;->mRealObject:Ljava/lang/Object;

    return-void
.end method
