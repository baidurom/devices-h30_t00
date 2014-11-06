.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static SyrillicLatinMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 652
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 866
    invoke-static {}, Landroid/text/TextUtils;->SyrillicToLatin()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Landroid/text/TextUtils;->SyrillicLatinMap:Ljava/util/HashMap;

    .line 1937
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 1939
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1941
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 1945
    const-string v0, "Arab"

    sput-object v0, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 1946
    const-string v0, "Hebr"

    sput-object v0, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SyrillicToLatin()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 871
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/CharSequence;>;"
    const/16 v1, 0x401

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0401"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const/16 v1, 0x402

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0110"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const/16 v1, 0x403

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0403"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const/16 v1, 0x404

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0404"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const/16 v1, 0x405

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0405"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const/16 v1, 0x406

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0406"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const/16 v1, 0x407

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0407"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const/16 v1, 0x408

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "J"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const/16 v1, 0x409

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "Lj"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const/16 v1, 0x40a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "Nj"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const/16 v1, 0x40b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0106"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const/16 v1, 0x40c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u040c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const/16 v1, 0x40d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u040d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const/16 v1, 0x40e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u040e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const/16 v1, 0x40f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "D\u017e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const/16 v1, 0x410

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "A"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const/16 v1, 0x411

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "B"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const/16 v1, 0x412

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "V"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "G"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const/16 v1, 0x414

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "D"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const/16 v1, 0x415

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const/16 v1, 0x416

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u017d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const/16 v1, 0x418

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const/16 v1, 0x419

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0419"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const/16 v1, 0x41a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const/16 v1, 0x41d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "N"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const/16 v1, 0x41e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "P"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const/16 v1, 0x420

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "R"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const/16 v1, 0x421

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const/16 v1, 0x422

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const/16 v1, 0x423

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "U"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const/16 v1, 0x424

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "F"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "H"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const/16 v1, 0x426

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const/16 v1, 0x427

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u010c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const/16 v1, 0x428

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0160"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const/16 v1, 0x429

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0429"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const/16 v1, 0x42a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u042a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const/16 v1, 0x42b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u042b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const/16 v1, 0x42c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u042c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const/16 v1, 0x42d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u042d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u042e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const/16 v1, 0x42f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u042f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const/16 v1, 0x430

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const/16 v1, 0x431

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const/16 v1, 0x432

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const/16 v1, 0x433

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "g"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const/16 v1, 0x434

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const/16 v1, 0x435

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const/16 v1, 0x436

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u017e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const/16 v1, 0x437

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "z"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "i"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0439"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "k"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const/16 v1, 0x43b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const/16 v1, 0x43c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const/16 v1, 0x43d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "n"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const/16 v1, 0x43e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "o"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const/16 v1, 0x43f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const/16 v1, 0x440

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const/16 v1, 0x441

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const/16 v1, 0x443

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "u"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const/16 v1, 0x444

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const/16 v1, 0x445

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const/16 v1, 0x446

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const/16 v1, 0x447

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u010d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const/16 v1, 0x448

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0161"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const/16 v1, 0x449

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0449"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const/16 v1, 0x44a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u044a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const/16 v1, 0x44b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u044b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u044c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u044d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u044e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u044f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0450"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0451"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0111"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const/16 v1, 0x453

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0453"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const/16 v1, 0x454

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0454"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const/16 v1, 0x455

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0455"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const/16 v1, 0x456

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0456"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const/16 v1, 0x457

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0457"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "j"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const/16 v1, 0x459

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "lj"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const/16 v1, 0x45a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "nj"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    const/16 v1, 0x45b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u0107"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const/16 v1, 0x45c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u045c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const/16 v1, 0x45d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u045d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const/16 v1, 0x45e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "\u045e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const/16 v1, 0x45f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "d\u017e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    return-object v0
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "oneMore"
    .parameter "more"

    .prologue
    .line 1319
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 22
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "oneMore"
    .parameter "more"
    .parameter "textDir"

    .prologue
    .line 1329
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v2

    .line 1331
    .local v2, mt:Landroid/text/MeasuredText;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1332
    .local v6, len:I
    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    .line 1333
    .local v20, width:F
    cmpg-float v3, v20, p2

    if-gtz v3, :cond_0

    .line 1387
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0
    :goto_0
    return-object p0

    .line 1337
    .restart local p0
    :cond_0
    :try_start_1
    iget-object v8, v2, Landroid/text/MeasuredText;->mChars:[C

    .line 1339
    .local v8, buf:[C
    const/4 v9, 0x0

    .line 1340
    .local v9, commaCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v6, :cond_2

    .line 1341
    aget-char v3, v8, v12

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    .line 1342
    add-int/lit8 v9, v9, 0x1

    .line 1340
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1346
    :cond_2
    add-int/lit8 v17, v9, 0x1

    .line 1348
    .local v17, remaining:I
    const/4 v14, 0x0

    .line 1349
    .local v14, ok:I
    const-string v15, ""

    .line 1351
    .local v15, okFormat:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1352
    .local v19, w:I
    const/4 v10, 0x0

    .line 1353
    .local v10, count:I
    iget-object v0, v2, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v21, v0

    .line 1355
    .local v21, widths:[F
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v18

    .line 1356
    .local v18, tempMt:Landroid/text/MeasuredText;
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_5

    .line 1357
    move/from16 v0, v19

    int-to-float v3, v0

    aget v4, v21, v12

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v19, v0

    .line 1359
    aget-char v3, v8, v12

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_3

    .line 1360
    add-int/lit8 v10, v10, 0x1

    .line 1365
    add-int/lit8 v17, v17, -0x1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1372
    .local v11, format:Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v11, v3, v4, v1}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1373
    move-object/from16 v0, v18

    iget v3, v0, Landroid/text/MeasuredText;->mLen:I

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 1375
    .local v13, moreWid:F
    move/from16 v0, v19

    int-to-float v3, v0

    add-float/2addr v3, v13

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_3

    .line 1376
    add-int/lit8 v14, v12, 0x1

    .line 1377
    move-object v15, v11

    .line 1356
    .end local v11           #format:Ljava/lang/String;
    .end local v13           #moreWid:F
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1368
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #format:Ljava/lang/String;
    goto :goto_3

    .line 1381
    .end local v11           #format:Ljava/lang/String;
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1383
    new-instance v16, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1384
    .local v16, out:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4, v14}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1387
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v16

    goto/16 :goto_0

    .end local v6           #len:I
    .end local v8           #buf:[C
    .end local v9           #commaCount:I
    .end local v10           #count:I
    .end local v12           #i:I
    .end local v14           #ok:I
    .end local v15           #okFormat:Ljava/lang/String;
    .end local v16           #out:Landroid/text/SpannableStringBuilder;
    .end local v17           #remaining:I
    .end local v18           #tempMt:Landroid/text/MeasuredText;
    .end local v19           #w:I
    .end local v20           #width:F
    .end local v21           #widths:[F
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v3
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 1504
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1505
    const-string v0, ""

    .line 1541
    :goto_0
    return-object v0

    .line 1508
    :cond_0
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1509
    aget-object v0, p0, v1

    goto :goto_0

    .line 1512
    :cond_1
    const/4 v8, 0x0

    .line 1513
    .local v8, spanned:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 1514
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 1515
    const/4 v8, 0x1

    .line 1520
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1521
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_2
    array-length v0, p0

    if-ge v6, v0, :cond_4

    .line 1522
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1521
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1513
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1525
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_4
    if-nez v8, :cond_5

    .line 1526
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1529
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1530
    .local v4, ss:Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1531
    .local v5, off:I
    const/4 v6, 0x0

    :goto_3
    array-length v0, p0

    if-ge v6, v0, :cond_7

    .line 1532
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1534
    .local v2, len:I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 1535
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1538
    :cond_6
    add-int/2addr v5, v2

    .line 1531
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1541
    .end local v2           #len:I
    :cond_7
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "kind"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 1122
    if-nez p3, :cond_0

    .line 1123
    const-class p3, Ljava/lang/Object;

    .line 1126
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1128
    .local v3, spans:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 1129
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1130
    .local v4, st:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1131
    .local v0, en:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 1133
    .local v1, fl:I
    if-ge v4, p1, :cond_1

    .line 1134
    move v4, p1

    .line 1135
    :cond_1
    if-le v0, p2, :cond_2

    .line 1136
    move v0, p2

    .line 1138
    :cond_2
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1141
    .end local v0           #en:I
    .end local v1           #fl:I
    .end local v4           #st:I
    :cond_3
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .parameter "delimitedString"
    .parameter "delimiter"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1773
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 1791
    :cond_1
    :goto_0
    return v3

    .line 1776
    :cond_2
    const/4 v2, -0x1

    .line 1777
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1778
    .local v1, length:I
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 1779
    if-lez v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    .line 1782
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v2, v5

    .line 1783
    .local v0, expectedDelimiterPos:I
    if-eq v0, v1, :cond_1

    .line 1787
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .end local v0           #expectedDelimiterPos:I
    :cond_5
    move v3, v4

    .line 1791
    goto :goto_0
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1421
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1422
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x590

    if-lt v1, v2, :cond_0

    .line 1423
    const/4 v1, 0x0

    .line 1426
    :goto_1
    return v1

    .line 1421
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1426
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 1431
    move v1, p1

    .local v1, i:I
    add-int v0, v1, p2

    .local v0, e:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1432
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_0

    .line 1433
    const/4 v2, 0x0

    .line 1436
    :goto_1
    return v2

    .line 1431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1436
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .parameter "cs"
    .parameter "printer"
    .parameter "prefix"

    .prologue
    .line 791
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 792
    check-cast v3, Landroid/text/Spanned;

    .line 793
    .local v3, sp:Landroid/text/Spanned;
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 795
    .local v2, os:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 796
    aget-object v1, v2, v0

    .line 797
    .local v1, o:Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 805
    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    .end local v2           #os:[Ljava/lang/Object;
    .end local v3           #sp:Landroid/text/Spanned;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 807
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"

    .prologue
    .line 1171
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "avail"
    .parameter "where"
    .parameter "preserveLength"
    .parameter "callback"

    .prologue
    .line 1192
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1196
    .local v7, ellipsis:Ljava/lang/String;
    :goto_0
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1192
    .end local v7           #ellipsis:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 24
    .parameter "text"
    .parameter "paint"
    .parameter "avail"
    .parameter "where"
    .parameter "preserveLength"
    .parameter "callback"
    .parameter "textDir"
    .parameter "ellipsis"

    .prologue
    .line 1221
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .line 1223
    .local v17, len:I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v4

    .line 1225
    .local v4, mt:Landroid/text/MeasuredText;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v23

    .line 1227
    .local v23, width:F
    cmpg-float v6, v23, p2

    if-gtz v6, :cond_1

    .line 1228
    if-eqz p5, :cond_0

    .line 1229
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v6, v7}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    :cond_0
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0
    :goto_0
    return-object p0

    .line 1237
    .restart local p0
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 1238
    .local v13, ellipsiswid:F
    sub-float p2, p2, v13

    .line 1240
    const/4 v15, 0x0

    .line 1241
    .local v15, left:I
    move/from16 v19, v17

    .line 1242
    .local v19, right:I
    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-gez v6, :cond_3

    .line 1254
    :goto_1
    if-eqz p5, :cond_2

    .line 1255
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-interface {v0, v15, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1258
    :cond_2
    iget-object v11, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 1259
    .local v11, buf:[C
    move-object/from16 v0, p0

    instance-of v6, v0, Landroid/text/Spanned;

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v6, v0

    move-object v5, v6

    .line 1261
    .local v5, sp:Landroid/text/Spanned;
    :goto_2
    sub-int v6, v19, v15

    sub-int v18, v17, v6

    .line 1262
    .local v18, remaining:I
    if-eqz p4, :cond_c

    .line 1263
    if-lez v18, :cond_9

    .line 1265
    const/4 v12, 0x0

    .local v12, ellIndex:I
    move/from16 v16, v15

    .end local v15           #left:I
    .local v16, left:I
    :goto_3
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v12, v6, :cond_8

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 1266
    add-int/lit8 v15, v16, 0x1

    .end local v16           #left:I
    .restart local v15       #left:I
    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v11, v16

    .line 1265
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v15

    .end local v15           #left:I
    .restart local v16       #left:I
    goto :goto_3

    .line 1244
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v11           #buf:[C
    .end local v12           #ellIndex:I
    .end local v16           #left:I
    .end local v18           #remaining:I
    .restart local v15       #left:I
    :cond_3
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v6, :cond_4

    .line 1245
    const/4 v6, 0x0

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v4, v0, v6, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v6

    sub-int v19, v17, v6

    goto :goto_1

    .line 1246
    :cond_4
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v6, :cond_5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v6, :cond_6

    .line 1247
    :cond_5
    const/4 v6, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v4, v0, v6, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v15

    goto :goto_1

    .line 1249
    :cond_6
    const/4 v6, 0x0

    const/high16 v7, 0x4000

    div-float v7, p2, v7

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v6

    sub-int v19, v17, v6

    .line 1250
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/text/MeasuredText;->measure(II)F

    move-result v6

    sub-float p2, p2, v6

    .line 1251
    const/4 v6, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v4, v0, v6, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v15

    goto/16 :goto_1

    .line 1259
    .restart local v11       #buf:[C
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .end local v15           #left:I
    .restart local v5       #sp:Landroid/text/Spanned;
    .restart local v12       #ellIndex:I
    .restart local v16       #left:I
    .restart local v18       #remaining:I
    :cond_8
    move/from16 v15, v16

    .line 1270
    .end local v12           #ellIndex:I
    .end local v16           #left:I
    .restart local v15       #left:I
    :cond_9
    move v14, v15

    .local v14, i:I
    :goto_4
    move/from16 v0, v19

    if-ge v14, v0, :cond_a

    .line 1271
    const v6, 0xfeff

    aput-char v6, v11, v14

    .line 1270
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1273
    :cond_a
    new-instance v20, Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v11, v6, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    .local v20, s:Ljava/lang/String;
    if-nez v5, :cond_b

    .line 1300
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v20

    goto/16 :goto_0

    .line 1277
    :cond_b
    :try_start_2
    new-instance v9, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1278
    .local v9, ss:Landroid/text/SpannableString;
    const/4 v6, 0x0

    const-class v8, Ljava/lang/Object;

    const/4 v10, 0x0

    move/from16 v7, v17

    invoke-static/range {v5 .. v10}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1300
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v9

    goto/16 :goto_0

    .line 1282
    .end local v9           #ss:Landroid/text/SpannableString;
    .end local v14           #i:I
    .end local v20           #s:Ljava/lang/String;
    :cond_c
    if-nez v18, :cond_d

    .line 1283
    :try_start_3
    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1300
    .end local p0
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_0

    .line 1286
    .restart local p0
    :cond_d
    if-nez v5, :cond_e

    .line 1287
    :try_start_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v6

    add-int v6, v6, v18

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1288
    .local v21, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v6, v15}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1289
    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    sub-int v6, v17, v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object p0

    .line 1300
    .end local p0
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_0

    .line 1294
    .end local v21           #sb:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_e
    :try_start_5
    new-instance v22, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1295
    .local v22, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1296
    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1297
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1300
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v22

    goto/16 :goto_0

    .end local v5           #sp:Landroid/text/Spanned;
    .end local v11           #buf:[C
    .end local v13           #ellipsiswid:F
    .end local v15           #left:I
    .end local v18           #remaining:I
    .end local v19           #right:I
    .end local v22           #ssb:Landroid/text/SpannableStringBuilder;
    .end local v23           #width:F
    :catchall_0
    move-exception v6

    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v6
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 484
    if-ne p0, p1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v2

    .line 486
    :cond_1
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 487
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_2

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 488
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 490
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 491
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    goto :goto_0

    .line 490
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_4
    move v2, v3

    .line 496
    goto :goto_0
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "template"
    .parameter "values"

    .prologue
    const/16 v6, 0x5e

    .line 993
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_0

    .line 994
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 997
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1000
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 1001
    .local v0, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1002
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_5

    .line 1003
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 1004
    .local v1, next:C
    if-ne v1, v6, :cond_1

    .line 1005
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1006
    add-int/lit8 v0, v0, 0x1

    .line 1007
    goto :goto_0

    .line 1008
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1009
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1010
    .local v3, which:I
    if-gez v3, :cond_3

    .line 1011
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1026
    .end local v1           #next:C
    .end local v3           #which:I
    :catch_0
    move-exception v4

    .line 1029
    :cond_2
    return-object v2

    .line 1014
    .restart local v1       #next:C
    .restart local v3       #which:I
    :cond_3
    array-length v4, p1

    if-lt v3, v4, :cond_4

    .line 1015
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1019
    :cond_4
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1020
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v0, v4

    .line 1021
    goto/16 :goto_0

    .line 1024
    .end local v1           #next:C
    .end local v3           #which:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 10
    .parameter "cs"
    .parameter "off"
    .parameter "reqModes"

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    .line 1677
    if-gez p1, :cond_1

    .line 1678
    const/4 v4, 0x0

    .line 1762
    :cond_0
    :goto_0
    return v4

    .line 1683
    :cond_1
    const/4 v4, 0x0

    .line 1685
    .local v4, mode:I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_2

    .line 1686
    or-int/lit16 v4, v4, 0x1000

    .line 1688
    :cond_2
    and-int/lit16 v5, p2, 0x6000

    if-eqz v5, :cond_0

    .line 1694
    move v1, p1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_3

    .line 1695
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1697
    .local v0, c:C
    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    .line 1705
    .end local v0           #c:C
    :cond_3
    move v2, v1

    .line 1706
    .local v2, j:I
    :goto_2
    if-lez v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    .line 1707
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1694
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1709
    .end local v0           #c:C
    .restart local v2       #j:I
    :cond_6
    if-eqz v2, :cond_7

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 1710
    :cond_7
    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1715
    :cond_8
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_9

    .line 1716
    if-eq v1, v2, :cond_0

    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1722
    :cond_9
    if-eq v1, v2, :cond_0

    .line 1728
    :goto_3
    if-lez v2, :cond_a

    .line 1729
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1731
    .restart local v0       #c:C
    if-eq v0, v8, :cond_d

    if-eq v0, v9, :cond_d

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_d

    .line 1737
    .end local v0           #c:C
    :cond_a
    if-lez v2, :cond_0

    .line 1738
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1740
    .restart local v0       #c:C
    if-eq v0, v7, :cond_b

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_b

    const/16 v5, 0x21

    if-ne v0, v5, :cond_0

    .line 1744
    :cond_b
    if-ne v0, v7, :cond_c

    .line 1745
    add-int/lit8 v3, v2, -0x2

    .local v3, k:I
    :goto_4
    if-ltz v3, :cond_c

    .line 1746
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1748
    if-eq v0, v7, :cond_0

    .line 1752
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1758
    .end local v3           #k:I
    :cond_c
    or-int/lit16 v4, v4, 0x4000

    goto/16 :goto_0

    .line 1728
    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1745
    .restart local v3       #k:I
    :cond_e
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    .line 72
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    :goto_0
    return-void

    .line 73
    .restart local p0
    :cond_0
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_1

    .line 74
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    .line 75
    .restart local p0
    :cond_1
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_2

    .line 76
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_0

    .line 77
    .restart local p0
    :cond_2
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_3

    .line 78
    check-cast p0, Landroid/text/GetChars;

    .end local p0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_0

    .line 80
    .restart local p0
    :cond_3
    move v2, p1

    .local v2, i:I
    move v1, p4

    .end local p4
    .local v1, destoff:I
    :goto_1
    if-ge v2, p2, :cond_4

    .line 81
    add-int/lit8 p4, v1, 0x1

    .end local v1           #destoff:I
    .restart local p4
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 80
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4
    .restart local v1       #destoff:I
    goto :goto_1

    :cond_4
    move p4, v1

    .end local v1           #destoff:I
    .restart local p4
    goto :goto_0
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .line 1926
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1933
    :goto_0
    return v0

    .line 1929
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1926
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 6
    .parameter "locale"

    .prologue
    .line 1885
    if-eqz p0, :cond_4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1890
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1891
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 1893
    .local v4, variant:Ljava/lang/String;
    const-string v5, "ar"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "fa"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "hi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1895
    :cond_0
    const-string v4, ""

    .line 1897
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    .local v2, newLocale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llibcore/icu/ICU;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1899
    .local v3, scriptSubtag:Ljava/lang/String;
    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v5

    .line 1908
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #language:Ljava/lang/String;
    .end local v2           #newLocale:Ljava/util/Locale;
    .end local v3           #scriptSubtag:Ljava/lang/String;
    .end local v4           #variant:Ljava/lang/String;
    :goto_0
    return v5

    .line 1902
    .restart local v0       #country:Ljava/lang/String;
    .restart local v1       #language:Ljava/lang/String;
    .restart local v2       #newLocale:Ljava/util/Locale;
    .restart local v3       #scriptSubtag:Ljava/lang/String;
    .restart local v4       #variant:Ljava/lang/String;
    :cond_2
    sget-object v5, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1904
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 1908
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #language:Ljava/lang/String;
    .end local v2           #newLocale:Ljava/util/Locale;
    .end local v3           #scriptSubtag:Ljava/lang/String;
    .end local v4           #variant:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getNextTransition(Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 1629
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1630
    .local v0, len:I
    new-instance v1, Landroid/text/SpanSet;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-direct {v1, v2}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 1631
    .local v1, mReplacementSpanSpanSet:Landroid/text/SpanSet;,"Landroid/text/SpanSet<Landroid/text/style/ReplacementSpan;>;"
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    invoke-virtual {v1, p0, v3, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1632
    invoke-virtual {v1, v3, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    return v2
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 9
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 1068
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1070
    .local v4, len:I
    if-ne p1, v4, :cond_1

    .line 1101
    .end local v4           #len:I
    :cond_0
    :goto_0
    return v4

    .line 1072
    .restart local v4       #len:I
    :cond_1
    add-int/lit8 v7, v4, -0x1

    if-eq p1, v7, :cond_0

    .line 1075
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1077
    .local v0, c:C
    const v7, 0xd800

    if-lt v0, v7, :cond_4

    const v7, 0xdbff

    if-gt v0, v7, :cond_4

    .line 1078
    add-int/lit8 v7, p1, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1080
    .local v1, c1:C
    const v7, 0xdc00

    if-lt v1, v7, :cond_3

    const v7, 0xdfff

    if-gt v1, v7, :cond_3

    .line 1081
    add-int/lit8 p1, p1, 0x2

    .line 1088
    .end local v1           #c1:C
    :goto_1
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    move-object v7, p0

    .line 1089
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 1092
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_5

    move-object v7, p0

    .line 1093
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, start:I
    move-object v7, p0

    .line 1094
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1096
    .local v2, end:I
    if-ge v6, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1097
    move p1, v2

    .line 1092
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1083
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    .restart local v1       #c1:C
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1085
    .end local v1           #c1:C
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    move v4, p1

    .line 1101
    goto :goto_0
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 8
    .parameter "text"
    .parameter "offset"

    .prologue
    const/4 v6, 0x0

    .line 1033
    if-nez p1, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return v6

    .line 1035
    :cond_1
    const/4 v7, 0x1

    if-eq p1, v7, :cond_0

    .line 1038
    add-int/lit8 v6, p1, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1040
    .local v0, c:C
    const v6, 0xdc00

    if-lt v0, v6, :cond_4

    const v6, 0xdfff

    if-gt v0, v6, :cond_4

    .line 1041
    add-int/lit8 v6, p1, -0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1043
    .local v1, c1:C
    const v6, 0xd800

    if-lt v1, v6, :cond_3

    const v6, 0xdbff

    if-gt v1, v6, :cond_3

    .line 1044
    add-int/lit8 p1, p1, -0x2

    .line 1051
    .end local v1           #c1:C
    :goto_1
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    move-object v6, p0

    .line 1052
    check-cast v6, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1055
    .local v4, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_5

    move-object v6, p0

    .line 1056
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, start:I
    move-object v6, p0

    .line 1057
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1059
    .local v2, end:I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1060
    move p1, v5

    .line 1055
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1046
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v5           #start:I
    .restart local v1       #c1:C
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1048
    .end local v1           #c1:C
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    move v6, p1

    .line 1064
    goto :goto_0
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 502
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x20

    .line 460
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 462
    .local v1, len:I
    const/4 v2, 0x0

    .line 463
    .local v2, start:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :cond_0
    move v0, v1

    .line 468
    .local v0, end:I
    :goto_1
    if-le v0, v2, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_1

    .line 469
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 472
    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method public static hasReplacement(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 1618
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1619
    .local v0, len:I
    new-instance v1, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-direct {v1, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 1620
    .local v1, mReplacementSpanSpanSet:Landroid/text/SpanSet;,"Landroid/text/SpanSet<Landroid/text/style/ReplacementSpan;>;"
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    invoke-virtual {v1, p0, v2, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1621
    iget v3, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 1468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1471
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1472
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 1493
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1470
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1474
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1477
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1480
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1487
    :sswitch_3
    const-string v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1490
    :sswitch_4
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1496
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1472
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .parameter "s"
    .parameter "ch"
    .parameter "start"

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 93
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 95
    :goto_0
    return v1

    .restart local p0
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, -0x1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 101
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_0

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_0

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_0

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_6

    .line 103
    :cond_0
    const/16 v0, 0x1f4

    .line 104
    .local v0, INDEX_INCREMENT:I
    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 106
    .local v5, temp:[C
    :goto_0
    if-ge p2, p3, :cond_5

    .line 107
    add-int/lit16 v4, p2, 0x1f4

    .line 108
    .local v4, segend:I
    if-le v4, p3, :cond_1

    .line 109
    move v4, p3

    .line 111
    :cond_1
    const/4 v7, 0x0

    invoke-static {p0, p2, v4, v5, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 113
    sub-int v2, v4, p2

    .line 114
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 115
    aget-char v7, v5, v3

    if-ne v7, p1, :cond_3

    .line 116
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 117
    add-int/2addr v3, p2

    .line 132
    .end local v0           #INDEX_INCREMENT:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    .end local v5           #temp:[C
    :cond_2
    :goto_2
    return v3

    .line 114
    .restart local v0       #INDEX_INCREMENT:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #segend:I
    .restart local v5       #temp:[C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 121
    :cond_4
    move p2, v4

    .line 122
    goto :goto_0

    .line 124
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v3, v6

    .line 125
    goto :goto_2

    .line 128
    .end local v0           #INDEX_INCREMENT:I
    .end local v5           #temp:[C
    :cond_6
    move v3, p2

    .restart local v3       #i:I
    :goto_3
    if-ge v3, p3, :cond_7

    .line 129
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, p1, :cond_2

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v6

    .line 132
    goto :goto_2
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "s"
    .parameter "needle"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "s"
    .parameter "needle"
    .parameter "start"

    .prologue
    .line 198
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .parameter "s"
    .parameter "needle"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 203
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 204
    .local v1, nlen:I
    if-nez v1, :cond_1

    move v2, p2

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 207
    :cond_1
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 210
    .local v0, c:C
    :goto_1
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 211
    sub-int v3, p3, v1

    if-gt p2, v3, :cond_0

    .line 215
    if-ltz p2, :cond_0

    .line 219
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, p2

    .line 220
    goto :goto_0

    .line 223
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1582
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1583
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1584
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1585
    const/4 v2, 0x0

    .line 1588
    :goto_1
    return v2

    .line 1583
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1588
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 448
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 449
    :cond_0
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGraphic(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1568
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1569
    .local v0, gc:I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"

    .prologue
    .line 1548
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1549
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1550
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1551
    .local v0, gc:I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0xe

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    .line 1558
    const/4 v3, 0x1

    .line 1561
    .end local v0           #gc:I
    :goto_1
    return v3

    .line 1549
    .restart local v0       #gc:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1561
    .end local v0           #gc:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isPrintableAscii(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 1595
    const/16 v0, 0x20

    .line 1596
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 1597
    .local v1, asciiLast:I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1604
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1605
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1606
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1607
    const/4 v2, 0x0

    .line 1610
    :goto_1
    return v2

    .line 1605
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1610
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, list:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040509

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 279
    .local v0, delimiter:Ljava/lang/CharSequence;
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 309
    .local v0, firstTime:Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 310
    .local v3, token:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 315
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    .end local v3           #token:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 290
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 291
    .local v5, token:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 296
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 298
    .end local v5           #token:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 136
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .parameter "s"
    .parameter "ch"
    .parameter "last"

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 142
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 143
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 145
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 9
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "last"

    .prologue
    const/4 v7, -0x1

    .line 150
    if-gez p3, :cond_1

    move v4, v7

    .line 190
    :cond_0
    :goto_0
    return v4

    .line 152
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt p3, v8, :cond_2

    .line 153
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 155
    :cond_2
    add-int/lit8 v3, p3, 0x1

    .line 157
    .local v3, end:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 159
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v8, p0, Landroid/text/GetChars;

    if-nez v8, :cond_3

    const-class v8, Ljava/lang/StringBuffer;

    if-eq v1, v8, :cond_3

    const-class v8, Ljava/lang/StringBuilder;

    if-eq v1, v8, :cond_3

    const-class v8, Ljava/lang/String;

    if-ne v1, v8, :cond_8

    .line 161
    :cond_3
    const/16 v0, 0x1f4

    .line 162
    .local v0, INDEX_INCREMENT:I
    const/16 v8, 0x1f4

    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 164
    .local v6, temp:[C
    :goto_1
    if-ge p2, v3, :cond_7

    .line 165
    add-int/lit16 v5, v3, -0x1f4

    .line 166
    .local v5, segstart:I
    if-ge v5, p2, :cond_4

    .line 167
    move v5, p2

    .line 169
    :cond_4
    const/4 v8, 0x0

    invoke-static {p0, v5, v3, v6, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 171
    sub-int v2, v3, v5

    .line 172
    .local v2, count:I
    add-int/lit8 v4, v2, -0x1

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_6

    .line 173
    aget-char v8, v6, v4

    if-ne v8, p1, :cond_5

    .line 174
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 175
    add-int/2addr v4, v5

    goto :goto_0

    .line 172
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 179
    :cond_6
    move v3, v5

    .line 180
    goto :goto_1

    .line 182
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #segstart:I
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v4, v7

    .line 183
    goto :goto_0

    .line 186
    .end local v0           #INDEX_INCREMENT:I
    .end local v6           #temp:[C
    :cond_8
    add-int/lit8 v4, v3, -0x1

    .restart local v4       #i:I
    :goto_3
    if-lt v4, p2, :cond_9

    .line 187
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, p1, :cond_0

    .line 186
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_9
    move v4, v7

    .line 190
    goto :goto_0
.end method

.method static obtain(I)[C
    .locals 3
    .parameter "len"

    .prologue
    .line 1442
    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1443
    :try_start_0
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1444
    .local v0, buf:[C
    const/4 v1, 0x0

    sput-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1445
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    .line 1448
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    .line 1450
    :cond_1
    return-object v0

    .line 1445
    .end local v0           #buf:[C
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1851
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 1105
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1106
    return-void
.end method

.method static recycle([C)V
    .locals 2
    .parameter "temp"

    .prologue
    .line 1454
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1460
    :goto_0
    return-void

    .line 1457
    :cond_0
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1458
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1459
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 5
    .parameter "one"
    .parameter "toffset"
    .parameter "two"
    .parameter "ooffset"
    .parameter "len"

    .prologue
    .line 231
    mul-int/lit8 v3, p4, 0x2

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 233
    .local v2, temp:[C
    add-int v3, p1, p4

    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 234
    add-int v3, p3, p4

    invoke-static {p2, p3, v3, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 236
    const/4 v1, 0x1

    .line 237
    .local v1, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 238
    aget-char v3, v2, v0

    add-int v4, v0, p4

    aget-char v4, v2, v4

    if-eq v3, v4, :cond_1

    .line 239
    const/4 v1, 0x0

    .line 244
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 245
    return v1

    .line 237
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter "spanned"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, spans:[Ljava/lang/Object;,"[TT;"
    .local p2, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 1813
    const/4 v0, 0x0

    .line 1814
    .local v0, copy:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .line 1816
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_2

    .line 1817
    aget-object v5, p0, v3

    .line 1818
    .local v5, span:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1819
    .local v6, start:I
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1821
    .local v2, end:I
    if-ne v6, v2, :cond_1

    .line 1822
    if-nez v0, :cond_0

    .line 1823
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 1824
    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1825
    move v1, v3

    .line 1816
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1828
    :cond_1
    if-eqz v0, :cond_0

    .line 1829
    aput-object v5, v0, v1

    .line 1830
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1835
    .end local v2           #end:I
    .end local v5           #span:Ljava/lang/Object;,"TT;"
    .end local v6           #start:I
    :cond_2
    if-eqz v0, :cond_3

    .line 1836
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 1837
    .local v4, result:[Ljava/lang/Object;,"[TT;"
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1840
    .end local v4           #result:[Ljava/lang/Object;,"[TT;"
    :goto_2
    return-object v4

    :cond_3
    move-object v4, p0

    goto :goto_2
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "template"
    .parameter "sources"
    .parameter "destinations"

    .prologue
    .line 816
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 818
    .local v3, tb:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 819
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 821
    .local v4, where:I
    if-ltz v4, :cond_0

    .line 822
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 818
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    .end local v4           #where:I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 827
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 828
    .local v2, start:I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 830
    .local v0, end:I
    if-ltz v2, :cond_2

    .line 831
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 826
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 835
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_3
    return-object v3
.end method

.method public static serbianSyrillic2Latin(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"

    .prologue
    .line 844
    if-nez p0, :cond_1

    .line 845
    const/4 p0, 0x0

    .line 864
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 849
    .restart local p0
    :cond_1
    instance-of v4, p0, Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_0

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .local v3, outstr:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, j:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 856
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 857
    .local v0, c:C
    const/16 v4, 0x400

    if-le v0, v4, :cond_2

    const/16 v4, 0x460

    if-ge v0, v4, :cond_2

    .line 858
    sget-object v4, Landroid/text/TextUtils;->SyrillicLatinMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 855
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 860
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v0           #c:C
    :cond_3
    move-object p0, v3

    .line 864
    goto :goto_0
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 8
    .parameter "mt"
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "textDir"

    .prologue
    const/4 v6, 0x0

    .line 1394
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1397
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    check-cast p2, Landroid/text/Spanned;

    .end local p2
    move-object v1, p2

    .line 1398
    .local v1, sp:Landroid/text/Spanned;
    :goto_0
    sub-int v0, p4, p3

    .line 1399
    .local v0, len:I
    if-nez v1, :cond_2

    .line 1400
    invoke-virtual {p0, p1, v0, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    .line 1414
    .local v5, width:F
    :cond_0
    return v5

    .end local v0           #len:I
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v5           #width:F
    .restart local p2
    :cond_1
    move-object v1, v6

    .line 1397
    goto :goto_0

    .line 1402
    .end local p2
    .restart local v0       #len:I
    .restart local v1       #sp:Landroid/text/Spanned;
    :cond_2
    const/4 v5, 0x0

    .line 1404
    .restart local v5       #width:F
    const/4 v3, 0x0

    .local v3, spanStart:I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 1405
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 1407
    .local v2, spanEnd:I
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1409
    .local v4, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v4, v1, v7}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1410
    .restart local v4       #spans:[Landroid/text/style/MetricAffectingSpan;
    sub-int v7, v2, v3

    invoke-virtual {p0, p1, v4, v7, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v7

    add-float/2addr v5, v7

    .line 1404
    move v3, v2

    goto :goto_1
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "expression"

    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "pattern"

    .prologue
    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "source"

    .prologue
    .line 432
    if-nez p0, :cond_1

    .line 433
    const/4 p0, 0x0

    .line 439
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 434
    .restart local p0
    :cond_1
    instance-of v0, p0, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    .line 436
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 437
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 256
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 257
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 258
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 259
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2

    .line 261
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    .restart local p0
    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 264
    .local v1, temp:[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 265
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 266
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 1871
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 1861
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 9
    .parameter "cs"
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    const/4 v8, 0x0

    .line 607
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_3

    .line 608
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    .line 611
    check-cast v5, Landroid/text/Spanned;

    .line 612
    .local v5, sp:Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v5, v8, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 619
    .local v2, os:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_2

    .line 620
    aget-object v1, v2, v0

    .line 621
    .local v1, o:Ljava/lang/Object;
    aget-object v3, v2, v0

    .line 623
    .local v3, prop:Ljava/lang/Object;
    instance-of v6, v3, Landroid/text/style/CharacterStyle;

    if-eqz v6, :cond_0

    .line 624
    check-cast v3, Landroid/text/style/CharacterStyle;

    .end local v3           #prop:Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    .line 627
    :cond_0
    instance-of v6, v3, Landroid/text/ParcelableSpan;

    if-eqz v6, :cond_1

    move-object v4, v3

    .line 628
    check-cast v4, Landroid/text/ParcelableSpan;

    .line 629
    .local v4, ps:Landroid/text/ParcelableSpan;
    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 631
    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    .line 619
    .end local v4           #ps:Landroid/text/ParcelableSpan;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v1           #o:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    .end local v0           #i:I
    .end local v2           #os:[Ljava/lang/Object;
    .end local v5           #sp:Landroid/text/Spanned;
    :goto_1
    return-void

    .line 637
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    if-eqz p0, :cond_4

    .line 639
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 641
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 647
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    return-void
.end method
